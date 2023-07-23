import 'package:get_it/get_it.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/domain/forecast_repository.dart';
import 'package:weather_forecast/infrastructure/forecast/datasource/data_source.dart';
import 'package:weather_forecast/infrastructure/forecast/datasource/remote_data_source_impl.dart';
import 'package:weather_forecast/infrastructure/forecast/forecast_repository_imp.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUp() async {
  await initLocators();
}

Future<void> initLocators() async {
  getIt.registerSingleton<DataSource>(RemoteDataSourceImpl());
  getIt.registerSingleton<ForecastRepository>(
      ForecastRepositoryImpl(getIt.get()));
  getIt.registerSingleton<ForecastCubit>(ForecastCubit(getIt.get()));
}
