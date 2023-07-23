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
    required String observationTime,
    required int temperature,
    required int weatherCode,
    required List<String> weatherIcons,
    required List<String> weatherDescriptions,
    required int windSpeed,
    required int windDegree,
    required String windDir,
    required int pressure,
    required int precip,
    required int humidity,
    required int cloudcover,
    required int feelslike,
    required int uvIndex,
    required int visibility,
    required String isDay,
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
      cloudcover: cloudcover,
      feelslike: feelslike,
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
    required String lat,
    required String lon,
    required String timezoneId,
    required String localtime,
    required int localtimeEpoch,
    required String utcOffset,
  }) = _LocationDto;

  const LocationDto._();

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  Location toEntity() => Location(
      name: name,
      country: country,
      region: region,
      lat: lat,
      lon: lon,
      timezoneId: timezoneId,
      localtime: localtime,
      localtimeEpoch: localtimeEpoch,
      utcOffset: utcOffset);
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
