import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/application/features/forecast/location_response.dart';
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
          emit(ForecastState.error(errorMessage));
        },
      );
    } catch (error) {
      if (error is SocketException) {
        emit(const ForecastState.error(ErrorMessages.noInternetError));
      } else {
        emit(const ForecastState.error(ErrorMessages.generalErrorMessage));
      }
    }
  }

  int convertTemperatureUnit(bool isFahrenheit, int temperature) {
    if (isFahrenheit) {
      return (temperature * 9 / 5 + 32).round();
    }
    return temperature;
  }

  Future<LocationResponse> getCityFromLocation() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return const LocationResponse.error(
            ErrorMessages.locationServiceDisabled);
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return const LocationResponse.error(
              ErrorMessages.locationPermissionDenied);
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return const LocationResponse.error(
            ErrorMessages.locationPermissionDeniedForever);
      }
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      final placeMarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placeMarks.first.locality != null &&
          placeMarks.first.country != null) {
        return LocationResponse.success(
            '${placeMarks.first.locality}, ${placeMarks.first.country}');
      }
      return const LocationResponse.error(ErrorMessages.failedToGetCity);
    } catch (e) {
      return const LocationResponse.error(ErrorMessages.failedToGetCity);
    }
  }
}
