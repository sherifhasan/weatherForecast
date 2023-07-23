import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
}
