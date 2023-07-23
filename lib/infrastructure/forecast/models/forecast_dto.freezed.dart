// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDto _$ForecastDtoFromJson(Map<String, dynamic> json) {
  return _ForecastDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastDto {
  @JsonKey(name: 'request')
  RequestDto get request => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationDto get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentDto get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDtoCopyWith<ForecastDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDtoCopyWith<$Res> {
  factory $ForecastDtoCopyWith(
          ForecastDto value, $Res Function(ForecastDto) then) =
      _$ForecastDtoCopyWithImpl<$Res, ForecastDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request') RequestDto request,
      @JsonKey(name: 'location') LocationDto location,
      @JsonKey(name: 'current') CurrentDto current});

  $RequestDtoCopyWith<$Res> get request;
  $LocationDtoCopyWith<$Res> get location;
  $CurrentDtoCopyWith<$Res> get current;
}

/// @nodoc
class _$ForecastDtoCopyWithImpl<$Res, $Val extends ForecastDto>
    implements $ForecastDtoCopyWith<$Res> {
  _$ForecastDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestDto,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestDtoCopyWith<$Res> get request {
    return $RequestDtoCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentDtoCopyWith<$Res> get current {
    return $CurrentDtoCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastDtoCopyWith<$Res>
    implements $ForecastDtoCopyWith<$Res> {
  factory _$$_ForecastDtoCopyWith(
          _$_ForecastDto value, $Res Function(_$_ForecastDto) then) =
      __$$_ForecastDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request') RequestDto request,
      @JsonKey(name: 'location') LocationDto location,
      @JsonKey(name: 'current') CurrentDto current});

  @override
  $RequestDtoCopyWith<$Res> get request;
  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $CurrentDtoCopyWith<$Res> get current;
}

/// @nodoc
class __$$_ForecastDtoCopyWithImpl<$Res>
    extends _$ForecastDtoCopyWithImpl<$Res, _$_ForecastDto>
    implements _$$_ForecastDtoCopyWith<$Res> {
  __$$_ForecastDtoCopyWithImpl(
      _$_ForecastDto _value, $Res Function(_$_ForecastDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$_ForecastDto(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestDto,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastDto extends _ForecastDto {
  const _$_ForecastDto(
      {@JsonKey(name: 'request') required this.request,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'current') required this.current})
      : super._();

  factory _$_ForecastDto.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDtoFromJson(json);

  @override
  @JsonKey(name: 'request')
  final RequestDto request;
  @override
  @JsonKey(name: 'location')
  final LocationDto location;
  @override
  @JsonKey(name: 'current')
  final CurrentDto current;

  @override
  String toString() {
    return 'ForecastDto(request: $request, location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastDto &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, request, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastDtoCopyWith<_$_ForecastDto> get copyWith =>
      __$$_ForecastDtoCopyWithImpl<_$_ForecastDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDtoToJson(
      this,
    );
  }
}

abstract class _ForecastDto extends ForecastDto {
  const factory _ForecastDto(
          {@JsonKey(name: 'request') required final RequestDto request,
          @JsonKey(name: 'location') required final LocationDto location,
          @JsonKey(name: 'current') required final CurrentDto current}) =
      _$_ForecastDto;
  const _ForecastDto._() : super._();

  factory _ForecastDto.fromJson(Map<String, dynamic> json) =
      _$_ForecastDto.fromJson;

  @override
  @JsonKey(name: 'request')
  RequestDto get request;
  @override
  @JsonKey(name: 'location')
  LocationDto get location;
  @override
  @JsonKey(name: 'current')
  CurrentDto get current;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastDtoCopyWith<_$_ForecastDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) {
  return _CurrentDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentDto {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentDtoCopyWith<CurrentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentDtoCopyWith<$Res> {
  factory $CurrentDtoCopyWith(
          CurrentDto value, $Res Function(CurrentDto) then) =
      _$CurrentDtoCopyWithImpl<$Res, CurrentDto>;
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
class _$CurrentDtoCopyWithImpl<$Res, $Val extends CurrentDto>
    implements $CurrentDtoCopyWith<$Res> {
  _$CurrentDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_CurrentDtoCopyWith<$Res>
    implements $CurrentDtoCopyWith<$Res> {
  factory _$$_CurrentDtoCopyWith(
          _$_CurrentDto value, $Res Function(_$_CurrentDto) then) =
      __$$_CurrentDtoCopyWithImpl<$Res>;
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
class __$$_CurrentDtoCopyWithImpl<$Res>
    extends _$CurrentDtoCopyWithImpl<$Res, _$_CurrentDto>
    implements _$$_CurrentDtoCopyWith<$Res> {
  __$$_CurrentDtoCopyWithImpl(
      _$_CurrentDto _value, $Res Function(_$_CurrentDto) _then)
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
    return _then(_$_CurrentDto(
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
@JsonSerializable()
class _$_CurrentDto extends _CurrentDto {
  const _$_CurrentDto(
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
        _weatherDescriptions = weatherDescriptions,
        super._();

  factory _$_CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentDtoFromJson(json);

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
    return 'CurrentDto(observationTime: $observationTime, temperature: $temperature, weatherCode: $weatherCode, weatherIcons: $weatherIcons, weatherDescriptions: $weatherDescriptions, windSpeed: $windSpeed, windDegree: $windDegree, windDir: $windDir, pressure: $pressure, precip: $precip, humidity: $humidity, cloudcover: $cloudcover, feelslike: $feelslike, uvIndex: $uvIndex, visibility: $visibility, isDay: $isDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentDto &&
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

  @JsonKey(ignore: true)
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
  _$$_CurrentDtoCopyWith<_$_CurrentDto> get copyWith =>
      __$$_CurrentDtoCopyWithImpl<_$_CurrentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentDtoToJson(
      this,
    );
  }
}

abstract class _CurrentDto extends CurrentDto {
  const factory _CurrentDto(
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
      required final String isDay}) = _$_CurrentDto;
  const _CurrentDto._() : super._();

  factory _CurrentDto.fromJson(Map<String, dynamic> json) =
      _$_CurrentDto.fromJson;

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
  _$$_CurrentDtoCopyWith<_$_CurrentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
mixin _$LocationDto {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  String get timezoneId => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;
  int get localtimeEpoch => throw _privateConstructorUsedError;
  String get utcOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res, LocationDto>;
  @useResult
  $Res call(
      {String name,
      String country,
      String region,
      String lat,
      String lon,
      String timezoneId,
      String localtime,
      int localtimeEpoch,
      String utcOffset});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res, $Val extends LocationDto>
    implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

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
    Object? lat = null,
    Object? lon = null,
    Object? timezoneId = null,
    Object? localtime = null,
    Object? localtimeEpoch = null,
    Object? utcOffset = null,
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
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneId: null == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationDtoCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$$_LocationDtoCopyWith(
          _$_LocationDto value, $Res Function(_$_LocationDto) then) =
      __$$_LocationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String country,
      String region,
      String lat,
      String lon,
      String timezoneId,
      String localtime,
      int localtimeEpoch,
      String utcOffset});
}

/// @nodoc
class __$$_LocationDtoCopyWithImpl<$Res>
    extends _$LocationDtoCopyWithImpl<$Res, _$_LocationDto>
    implements _$$_LocationDtoCopyWith<$Res> {
  __$$_LocationDtoCopyWithImpl(
      _$_LocationDto _value, $Res Function(_$_LocationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? region = null,
    Object? lat = null,
    Object? lon = null,
    Object? timezoneId = null,
    Object? localtime = null,
    Object? localtimeEpoch = null,
    Object? utcOffset = null,
  }) {
    return _then(_$_LocationDto(
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
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneId: null == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto(
      {required this.name,
      required this.country,
      required this.region,
      required this.lat,
      required this.lon,
      required this.timezoneId,
      required this.localtime,
      required this.localtimeEpoch,
      required this.utcOffset})
      : super._();

  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDtoFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final String region;
  @override
  final String lat;
  @override
  final String lon;
  @override
  final String timezoneId;
  @override
  final String localtime;
  @override
  final int localtimeEpoch;
  @override
  final String utcOffset;

  @override
  String toString() {
    return 'LocationDto(name: $name, country: $country, region: $region, lat: $lat, lon: $lon, timezoneId: $timezoneId, localtime: $localtime, localtimeEpoch: $localtimeEpoch, utcOffset: $utcOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezoneId, timezoneId) ||
                other.timezoneId == timezoneId) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime) &&
            (identical(other.localtimeEpoch, localtimeEpoch) ||
                other.localtimeEpoch == localtimeEpoch) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, country, region, lat, lon,
      timezoneId, localtime, localtimeEpoch, utcOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDtoCopyWith<_$_LocationDto> get copyWith =>
      __$$_LocationDtoCopyWithImpl<_$_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDtoToJson(
      this,
    );
  }
}

abstract class _LocationDto extends LocationDto {
  const factory _LocationDto(
      {required final String name,
      required final String country,
      required final String region,
      required final String lat,
      required final String lon,
      required final String timezoneId,
      required final String localtime,
      required final int localtimeEpoch,
      required final String utcOffset}) = _$_LocationDto;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDto.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  String get region;
  @override
  String get lat;
  @override
  String get lon;
  @override
  String get timezoneId;
  @override
  String get localtime;
  @override
  int get localtimeEpoch;
  @override
  String get utcOffset;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDtoCopyWith<_$_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return _RequestDto.fromJson(json);
}

/// @nodoc
mixin _$RequestDto {
  String get type => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDtoCopyWith<RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res, RequestDto>;
  @useResult
  $Res call({String type, String query, String language, String unit});
}

/// @nodoc
class _$RequestDtoCopyWithImpl<$Res, $Val extends RequestDto>
    implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? query = null,
    Object? language = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestDtoCopyWith<$Res>
    implements $RequestDtoCopyWith<$Res> {
  factory _$$_RequestDtoCopyWith(
          _$_RequestDto value, $Res Function(_$_RequestDto) then) =
      __$$_RequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String query, String language, String unit});
}

/// @nodoc
class __$$_RequestDtoCopyWithImpl<$Res>
    extends _$RequestDtoCopyWithImpl<$Res, _$_RequestDto>
    implements _$$_RequestDtoCopyWith<$Res> {
  __$$_RequestDtoCopyWithImpl(
      _$_RequestDto _value, $Res Function(_$_RequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? query = null,
    Object? language = null,
    Object? unit = null,
  }) {
    return _then(_$_RequestDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDto extends _RequestDto {
  const _$_RequestDto(
      {required this.type,
      required this.query,
      required this.language,
      required this.unit})
      : super._();

  factory _$_RequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDtoFromJson(json);

  @override
  final String type;
  @override
  final String query;
  @override
  final String language;
  @override
  final String unit;

  @override
  String toString() {
    return 'RequestDto(type: $type, query: $query, language: $language, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, query, language, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      __$$_RequestDtoCopyWithImpl<_$_RequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestDtoToJson(
      this,
    );
  }
}

abstract class _RequestDto extends RequestDto {
  const factory _RequestDto(
      {required final String type,
      required final String query,
      required final String language,
      required final String unit}) = _$_RequestDto;
  const _RequestDto._() : super._();

  factory _RequestDto.fromJson(Map<String, dynamic> json) =
      _$_RequestDto.fromJson;

  @override
  String get type;
  @override
  String get query;
  @override
  String get language;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
