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
    @JsonKey(name: "data") Map<String, ErrorDetails>? data,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}

@freezed
class ErrorDetails with _$ErrorDetails {
  const factory ErrorDetails({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
  }) = _ErrorDetails;

  factory ErrorDetails.fromJson(Map<String, Object?> json) =>
      _$ErrorDetailsFromJson(json);
}
