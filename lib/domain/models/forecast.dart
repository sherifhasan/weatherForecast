import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required Location location,
    required Current current,
  }) = _Forecast;
}

@freezed
class Current with _$Current {
  const factory Current({
    required String observationTime,
    required int temperature,
    required List<String> weatherIcons,
    required List<String> weatherDescriptions,
    required int windSpeed,
    required String windDir,
    required int pressure,
    required double precip,
    required int humidity,
    required int cloudcover,
    required int feelslike,

  }) = _Current;
}

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required String country,
    required String region,
    required String localtime,
  }) = _Location;
}
