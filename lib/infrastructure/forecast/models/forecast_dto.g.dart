// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastDto _$$_ForecastDtoFromJson(Map<String, dynamic> json) =>
    _$_ForecastDto(
      request: RequestDto.fromJson(json['request'] as Map<String, dynamic>),
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentDto.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastDtoToJson(_$_ForecastDto instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
    };

_$_CurrentDto _$$_CurrentDtoFromJson(Map<String, dynamic> json) =>
    _$_CurrentDto(
      observationTime: json['observation_time'] as String,
      weatherCode: json['weather_code'] as int,
      weatherIcons: (json['weather_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weatherDescriptions: (json['weather_descriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      windSpeed: json['wind_speed'] as int,
      windDegree: json['wind_degree'] as int,
      windDir: json['wind_dir'] as String,
      uvIndex: json['uv_index'] as int,
      cloudCover: json['cloudcover'] as int,
      isDay: json['is_day'] as String,
      feelsLike: json['feelslike'] as int,
      temperature: json['temperature'] as int,
      pressure: json['pressure'] as int,
      precip: json['precip'] as int,
      humidity: json['humidity'] as int,
      visibility: json['visibility'] as int,
    );

Map<String, dynamic> _$$_CurrentDtoToJson(_$_CurrentDto instance) =>
    <String, dynamic>{
      'observation_time': instance.observationTime,
      'weather_code': instance.weatherCode,
      'weather_icons': instance.weatherIcons,
      'weather_descriptions': instance.weatherDescriptions,
      'wind_speed': instance.windSpeed,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'uv_index': instance.uvIndex,
      'cloudcover': instance.cloudCover,
      'is_day': instance.isDay,
      'feelslike': instance.feelsLike,
      'temperature': instance.temperature,
      'pressure': instance.pressure,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
    };

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDto(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'localtime': instance.localtime,
    };

_$_RequestDto _$$_RequestDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestDto(
      type: json['type'] as String,
      query: json['query'] as String,
      language: json['language'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_RequestDtoToJson(_$_RequestDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };
