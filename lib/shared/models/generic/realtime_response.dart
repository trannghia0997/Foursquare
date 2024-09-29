import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'realtime_response.freezed.dart';
part 'realtime_response.g.dart';

/// RealtimeAction is an enum that represents the action that was performed
/// in the realtime response.
///
/// The possible values are:
/// - create
/// - update
/// - delete
enum RealtimeAction {
  @JsonValue("create")
  create,
  @JsonValue("update")
  update,
  @JsonValue("delete")
  delete,
}

/// RealtimeResponse is a generic response model that can be used to handle
/// realtime responses from the API.
///
/// **Warning**: Don't send RealtimeResponse to the API. This is only used to handle
/// realtime responses from the API.
@Freezed(genericArgumentFactories: true)
class RealtimeResponse<T> with _$RealtimeResponse<T> {
  const factory RealtimeResponse({
    @JsonKey(name: "action") required RealtimeAction action,
    @JsonKey(name: "record") required T record,
  }) = _RealtimeResponse;

  factory RealtimeResponse.fromJson(
          Map<String, Object?> json, T Function(Object?) fromJsonT) =>
      _$RealtimeResponseFromJson(json, fromJsonT);
}
