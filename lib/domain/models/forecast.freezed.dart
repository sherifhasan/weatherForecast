// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Forecast {
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call({Location location, Current current});

  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$$_ForecastCopyWith(
          _$_Forecast value, $Res Function(_$_Forecast) then) =
      __$$_ForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, Current current});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$_ForecastCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$_Forecast>
    implements _$$_ForecastCopyWith<$Res> {
  __$$_ForecastCopyWithImpl(
      _$_Forecast _value, $Res Function(_$_Forecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$_Forecast(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc

class _$_Forecast implements _Forecast {
  const _$_Forecast({required this.location, required this.current});

  @override
  final Location location;
  @override
  final Current current;

  @override
  String toString() {
    return 'Forecast(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forecast &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      __$$_ForecastCopyWithImpl<_$_Forecast>(this, _$identity);
}

abstract class _Forecast implements Forecast {
  const factory _Forecast(
      {required final Location location,
      required final Current current}) = _$_Forecast;

  @override
  Location get location;
  @override
  Current get current;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Current {
  String get observationTime => throw _privateConstructorUsedError;
  int get temperature => throw _privateConstructorUsedError;
  int get weatherCode => throw _privateConstructorUsedError;
  List<String> get weatherIcons => throw _privateConstructorUsedError;
  List<String> get weatherDescriptions => throw _privateConstructorUsedError;
  int get windSpeed => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;
  String get windDir => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get precip => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloudcover => throw _privateConstructorUsedError;
  int get feelslike => throw _privateConstructorUsedError;
  int get uvIndex => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  String get isDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {String observationTime,
      int temperature,
      int weatherCode,
      List<String> weatherIcons,
      List<String> weatherDescriptions,
      int windSpeed,
      int windDegree,
      String windDir,
      int pressure,
      int precip,
      int humidity,
      int cloudcover,
      int feelslike,
      int uvIndex,
      int visibility,
      String isDay});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? weatherIcons = null,
    Object? weatherDescriptions = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressure = null,
    Object? precip = null,
    Object? humidity = null,
    Object? cloudcover = null,
    Object? feelslike = null,
    Object? uvIndex = null,
    Object? visibility = null,
    Object? isDay = null,
  }) {
    return _then(_value.copyWith(
      observationTime: null == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIcons: null == weatherIcons
          ? _value.weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherDescriptions: null == weatherDescriptions
          ? _value.weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      precip: null == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$_CurrentCopyWith(
          _$_Current value, $Res Function(_$_Current) then) =
      __$$_CurrentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String observationTime,
      int temperature,
      int weatherCode,
      List<String> weatherIcons,
      List<String> weatherDescriptions,
      int windSpeed,
      int windDegree,
      String windDir,
      int pressure,
      int precip,
      int humidity,
      int cloudcover,
      int feelslike,
      int uvIndex,
      int visibility,
      String isDay});
}

/// @nodoc
class __$$_CurrentCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$_Current>
    implements _$$_CurrentCopyWith<$Res> {
  __$$_CurrentCopyWithImpl(_$_Current _value, $Res Function(_$_Current) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationTime = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? weatherIcons = null,
    Object? weatherDescriptions = null,
    Object? windSpeed = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressure = null,
    Object? precip = null,
    Object? humidity = null,
    Object? cloudcover = null,
    Object? feelslike = null,
    Object? uvIndex = null,
    Object? visibility = null,
    Object? isDay = null,
  }) {
    return _then(_$_Current(
      observationTime: null == observationTime
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      weatherIcons: null == weatherIcons
          ? _value._weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherDescriptions: null == weatherDescriptions
          ? _value._weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      precip: null == precip
          ? _value.precip
          : precip // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike: null == feelslike
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Current implements _Current {
  const _$_Current(
      {required this.observationTime,
      required this.temperature,
      required this.weatherCode,
      required final List<String> weatherIcons,
      required final List<String> weatherDescriptions,
      required this.windSpeed,
      required this.windDegree,
      required this.windDir,
      required this.pressure,
      required this.precip,
      required this.humidity,
      required this.cloudcover,
      required this.feelslike,
      required this.uvIndex,
      required this.visibility,
      required this.isDay})
      : _weatherIcons = weatherIcons,
        _weatherDescriptions = weatherDescriptions;

  @override
  final String observationTime;
  @override
  final int temperature;
  @override
  final int weatherCode;
  final List<String> _weatherIcons;
  @override
  List<String> get weatherIcons {
    if (_weatherIcons is EqualUnmodifiableListView) return _weatherIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherIcons);
  }

  final List<String> _weatherDescriptions;
  @override
  List<String> get weatherDescriptions {
    if (_weatherDescriptions is EqualUnmodifiableListView)
      return _weatherDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherDescriptions);
  }

  @override
  final int windSpeed;
  @override
  final int windDegree;
  @override
  final String windDir;
  @override
  final int pressure;
  @override
  final int precip;
  @override
  final int humidity;
  @override
  final int cloudcover;
  @override
  final int feelslike;
  @override
  final int uvIndex;
  @override
  final int visibility;
  @override
  final String isDay;

  @override
  String toString() {
    return 'Current(observationTime: $observationTime, temperature: $temperature, weatherCode: $weatherCode, weatherIcons: $weatherIcons, weatherDescriptions: $weatherDescriptions, windSpeed: $windSpeed, windDegree: $windDegree, windDir: $windDir, pressure: $pressure, precip: $precip, humidity: $humidity, cloudcover: $cloudcover, feelslike: $feelslike, uvIndex: $uvIndex, visibility: $visibility, isDay: $isDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Current &&
            (identical(other.observationTime, observationTime) ||
                other.observationTime == observationTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._weatherIcons, _weatherIcons) &&
            const DeepCollectionEquality()
                .equals(other._weatherDescriptions, _weatherDescriptions) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.precip, precip) || other.precip == precip) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloudcover, cloudcover) ||
                other.cloudcover == cloudcover) &&
            (identical(other.feelslike, feelslike) ||
                other.feelslike == feelslike) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isDay, isDay) || other.isDay == isDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      observationTime,
      temperature,
      weatherCode,
      const DeepCollectionEquality().hash(_weatherIcons),
      const DeepCollectionEquality().hash(_weatherDescriptions),
      windSpeed,
      windDegree,
      windDir,
      pressure,
      precip,
      humidity,
      cloudcover,
      feelslike,
      uvIndex,
      visibility,
      isDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      __$$_CurrentCopyWithImpl<_$_Current>(this, _$identity);
}

abstract class _Current implements Current {
  const factory _Current(
      {required final String observationTime,
      required final int temperature,
      required final int weatherCode,
      required final List<String> weatherIcons,
      required final List<String> weatherDescriptions,
      required final int windSpeed,
      required final int windDegree,
      required final String windDir,
      required final int pressure,
      required final int precip,
      required final int humidity,
      required final int cloudcover,
      required final int feelslike,
      required final int uvIndex,
      required final int visibility,
      required final String isDay}) = _$_Current;

  @override
  String get observationTime;
  @override
  int get temperature;
  @override
  int get weatherCode;
  @override
  List<String> get weatherIcons;
  @override
  List<String> get weatherDescriptions;
  @override
  int get windSpeed;
  @override
  int get windDegree;
  @override
  String get windDir;
  @override
  int get pressure;
  @override
  int get precip;
  @override
  int get humidity;
  @override
  int get cloudcover;
  @override
  int get feelslike;
  @override
  int get uvIndex;
  @override
  int get visibility;
  @override
  String get isDay;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String name, String country, String region, String localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? region = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String country, String region, String localtime});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? region = null,
    Object? localtime = null,
  }) {
    return _then(_$_Location(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Location implements _Location {
  const _$_Location(
      {required this.name,
      required this.country,
      required this.region,
      required this.localtime});

  @override
  final String name;
  @override
  final String country;
  @override
  final String region;
  @override
  final String localtime;

  @override
  String toString() {
    return 'Location(name: $name, country: $country, region: $region, localtime: $localtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, region, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String name,
      required final String country,
      required final String region,
      required final String localtime}) = _$_Location;

  @override
  String get name;
  @override
  String get country;
  @override
  String get region;
  @override
  String get localtime;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
