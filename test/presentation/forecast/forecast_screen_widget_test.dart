import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/domain/forecast_repository.dart';
import 'package:weather_forecast/infrastructure/forecast/datasource/data_source.dart';
import 'package:weather_forecast/presentation/forecast/forecast_screen.dart';

class MockRemoteDataSource extends Mock implements DataSource {}

class MockForecastRepository extends Mock implements ForecastRepository {
  final MockRemoteDataSource mockRemoteDataSource;

  MockForecastRepository(this.mockRemoteDataSource);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group(
    'Forecast Screen',
    () {
      testWidgets(
          'Render 1 widget of Type TextField and 1 widget of Type SingleChildScrollView',
          (WidgetTester tester) async {
        await tester.pumpWidget(BlocProvider(
            create: (context) =>
                ForecastCubit(MockForecastRepository(MockRemoteDataSource())),
            child: const MaterialApp(home: ForecastScreen())));
        expect(find.byType(TextField), findsNWidgets(1));
        expect(find.byType(SingleChildScrollView), findsNWidgets(1)); // Exp
      });
    },
  );
}
