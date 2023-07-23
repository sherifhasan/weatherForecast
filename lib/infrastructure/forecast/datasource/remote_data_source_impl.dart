import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/application/utils/app_constants.dart';
import 'package:weather_forecast/infrastructure/forecast/models/forecast_dto.dart';
import 'data_source.dart';

class RemoteDataSourceImpl extends DataSource {
  @override
  Future<ForecastDto> getWeatherForecast(String query) async {
    try {
      final url = Uri.parse(ApiConstants.forecastApiApiUrl(query));
      final response = await http.get(url);
      if (response.statusCode != 200) {
        throw Exception('${ErrorMessages.fetchApiErrorMessage}: $query');
      }
      final data = json.decode(utf8.decode(response.bodyBytes));
      return ForecastDto.fromJson(data);
    } on SocketException {
      throw const SocketException(ErrorMessages.noInternetError);
    } catch (e) {
      throw Exception('${ErrorMessages.generalErrorMessage}: $e');
    }
  }
}
