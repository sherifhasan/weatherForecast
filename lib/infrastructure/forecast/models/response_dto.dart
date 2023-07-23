import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/infrastructure/forecast/models/forecast_dto.dart';

part 'response_dto.freezed.dart';

@freezed
class ResponseDto with _$ResponseDto {
  const factory ResponseDto.success(ForecastDto forecastDto) = _Success;

  const factory ResponseDto.failure(String errorMessage) = _Failure;
}
