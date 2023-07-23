import 'package:weather_forecast/infrastructure/forecast/models/response_dto.dart';

abstract class DataSource {
  Future<ResponseDto> getWeatherForecast(String query);
}
