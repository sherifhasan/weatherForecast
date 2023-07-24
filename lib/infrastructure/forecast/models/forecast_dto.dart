import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/domain/models/forecast.dart';

part 'forecast_dto.freezed.dart';

part 'forecast_dto.g.dart';

@freezed
class ForecastDto with _$ForecastDto {
  const factory ForecastDto({
    @JsonKey(name: 'request') required RequestDto request,
    @JsonKey(name: 'location') required LocationDto location,
    @JsonKey(name: 'current') required CurrentDto current,
  }) = _ForecastDto;

  const ForecastDto._();

  factory ForecastDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDtoFromJson(json);

  Forecast toEntity() =>
      Forecast(location: location.toEntity(), current: current.toEntity());
}

@freezed
class CurrentDto with _$CurrentDto {
  const factory CurrentDto({
    @JsonKey(name: 'observation_time') required String observationTime,
    @JsonKey(name: 'weather_code') required int weatherCode,
    @JsonKey(name: 'weather_icons') required List<String> weatherIcons,
    @JsonKey(name: 'weather_descriptions')
    required List<String> weatherDescriptions,
    @JsonKey(name: 'wind_speed') required int windSpeed,
    @JsonKey(name: 'wind_degree') required int windDegree,
    @JsonKey(name: 'wind_dir') required String windDir,
    @JsonKey(name: 'uv_index') required int uvIndex,
    @JsonKey(name: 'cloudcover') required int cloudCover,
    @JsonKey(name: 'is_day') required String isDay,
    @JsonKey(name: 'feelslike') required int feelsLike,
    required int temperature,
    required int pressure,
    required int precip,
    required int humidity,
    required int visibility,
  }) = _CurrentDto;

  const CurrentDto._();

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);

  Current toEntity() => Current(
      observationTime: observationTime,
      temperature: temperature,
      weatherCode: weatherCode,
      weatherIcons: weatherIcons,
      weatherDescriptions: weatherDescriptions,
      windSpeed: windSpeed,
      windDegree: windDegree,
      windDir: windDir,
      pressure: pressure,
      precip: precip,
      humidity: humidity,
      cloudcover: cloudCover,
      feelslike: feelsLike,
      uvIndex: uvIndex,
      visibility: visibility,
      isDay: isDay);
}

@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required String name,
    required String country,
    required String region,
    required String localtime,
  }) = _LocationDto;

  const LocationDto._();

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  Location toEntity() => Location(
        name: name,
        country: country,
        region: region,
        localtime: localtime,
      );
}

@freezed
class RequestDto with _$RequestDto {
  const factory RequestDto({
    required String type,
    required String query,
    required String language,
    required String unit,
  }) = _RequestDto;

  const RequestDto._();

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);
}
