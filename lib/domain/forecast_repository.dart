import 'package:weather_forecast/infrastructure/forecast/models/forecast_dto.dart';

abstract class ForecastRepository {
  Future<ForecastDto> getWeatherForecast(String query);
}
