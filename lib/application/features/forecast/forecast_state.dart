part of 'forecast_cubit.dart';

@freezed
class ForecastState with _$ForecastState {
  const factory ForecastState.initial() = _Initial;

  const factory ForecastState.loading() = _Loading;

  const factory ForecastState.data(Forecast forecast) = _Data;

  const factory ForecastState.failed(String errorMessage) = _Failed;

  const factory ForecastState.noInternet() = _NoInternetConnection;

  const factory ForecastState.generalError() = _GeneralError;
}
