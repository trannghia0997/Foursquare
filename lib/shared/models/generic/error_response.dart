import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

/// ErrorResponse is a generic error response model that can be used to handle
/// error responses from the API.
///
/// **Warning**: Don't send ErrorResponse to the API. This is only used to handle
/// error responses from the API.
@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") Data? data,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "name") Name? name,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
  }) = _Name;

  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}
