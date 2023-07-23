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
      observationTime: json['observationTime'] as String,
      temperature: json['temperature'] as int,
      weatherCode: json['weatherCode'] as int,
      weatherIcons: (json['weatherIcons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weatherDescriptions: (json['weatherDescriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      windSpeed: json['windSpeed'] as int,
      windDegree: json['windDegree'] as int,
      windDir: json['windDir'] as String,
      pressure: json['pressure'] as int,
      precip: json['precip'] as int,
      humidity: json['humidity'] as int,
      cloudcover: json['cloudcover'] as int,
      feelslike: json['feelslike'] as int,
      uvIndex: json['uvIndex'] as int,
      visibility: json['visibility'] as int,
      isDay: json['isDay'] as String,
    );

Map<String, dynamic> _$$_CurrentDtoToJson(_$_CurrentDto instance) =>
    <String, dynamic>{
      'observationTime': instance.observationTime,
      'temperature': instance.temperature,
      'weatherCode': instance.weatherCode,
      'weatherIcons': instance.weatherIcons,
      'weatherDescriptions': instance.weatherDescriptions,
      'windSpeed': instance.windSpeed,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
      'pressure': instance.pressure,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'cloudcover': instance.cloudcover,
      'feelslike': instance.feelslike,
      'uvIndex': instance.uvIndex,
      'visibility': instance.visibility,
      'isDay': instance.isDay,
    };

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDto(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      timezoneId: json['timezoneId'] as String,
      localtime: json['localtime'] as String,
      localtimeEpoch: json['localtimeEpoch'] as int,
      utcOffset: json['utcOffset'] as String,
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezoneId': instance.timezoneId,
      'localtime': instance.localtime,
      'localtimeEpoch': instance.localtimeEpoch,
      'utcOffset': instance.utcOffset,
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
