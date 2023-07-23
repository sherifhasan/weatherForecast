import 'dart:io';

import 'package:weather_forecast/application/utils/app_constants.dart';
import 'package:weather_forecast/domain/forecast_repository.dart';
import 'package:weather_forecast/infrastructure/forecast/datasource/data_source.dart';
import 'package:weather_forecast/infrastructure/forecast/models/response_dto.dart';

class ForecastRepositoryImpl extends ForecastRepository {
  final DataSource _remoteDataSource;

  ForecastRepositoryImpl(this._remoteDataSource);

  @override
  Future<ResponseDto> getWeatherForecast(String query) async {
    try {
      return await _remoteDataSource.getWeatherForecast(query);
    } on SocketException {
      throw const SocketException(ErrorMessages.noInternetError);
    } catch (e) {
      throw Exception('${ErrorMessages.generalErrorMessage}: $e');
    }
  }
}
