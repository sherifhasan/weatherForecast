import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response.freezed.dart';

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse.success(String cityName) = _Success;

  const factory LocationResponse.error(String errorMessage) = _Failure;
}
