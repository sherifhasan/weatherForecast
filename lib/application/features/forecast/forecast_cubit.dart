import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/application/utils/app_constants.dart';
import 'package:weather_forecast/domain/forecast_repository.dart';
import 'package:weather_forecast/domain/models/forecast.dart';

part 'forecast_cubit.freezed.dart';

part 'forecast_state.dart';

class ForecastCubit extends Cubit<ForecastState> {
  final ForecastRepository _forecastRepository;

  ForecastCubit(
    this._forecastRepository,
  ) : super(const ForecastState.initial());

  Future<void> getWeatherForecast(String query) async {
    emit(const ForecastState.loading());
    try {
      final results = await _forecastRepository.getWeatherForecast(query);
      results.when(
        success: (forecastDto) {
          emit(ForecastState.data(forecastDto.toEntity()));
        },
        failure: (errorMessage) {
          emit(ForecastState.failed(errorMessage));
        },
      );
    } catch (error) {
      if (error is SocketException) {
        emit(const ForecastState.noInternet());
      } else {
        emit(const ForecastState.generalError());
      }
    }
  }

  Future<String> getCityFromLocation() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      final placeMarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placeMarks.first.locality != null &&
          placeMarks.first.country != null) {
        return '${placeMarks.first.country}, ${placeMarks.first.locality}';
      }
      return '';
    } catch (e) {
      throw Exception(ErrorMessages.failedToGetCity);
    }
  }
}
