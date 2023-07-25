import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'package:mocktail/mocktail.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/domain/forecast_repository.dart';
import 'package:weather_forecast/infrastructure/forecast/datasource/data_source.dart';
import 'package:weather_forecast/presentation/forecast/forecast_screen.dart';

class MockRemoteDataSource extends Mock implements DataSource {}

class MockSearchRepository extends Mock implements ForecastRepository {
  final MockRemoteDataSource mockRemoteDataSource;

  MockSearchRepository(this.mockRemoteDataSource);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group(
    'testing a responsive layout',
    () {
      testGoldens('testing a responsive layout for Forecast screen',
          (tester) async {
        await tester.pumpWidgetBuilder(BlocProvider(
            create: (context) =>
                ForecastCubit(MockSearchRepository(MockRemoteDataSource())),
            child: const ForecastScreen()));
        await multiScreenGolden(
          tester,
          'forecast_screen',
          devices: [
            Device.phone,
            Device.iphone11,
            Device.tabletPortrait,
            Device.tabletLandscape,
          ],
        );
      }, skip: !Platform.isMacOS);
    },
  );
}
