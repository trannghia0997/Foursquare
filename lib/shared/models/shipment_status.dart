import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment_status.freezed.dart';
part 'shipment_status.g.dart';

@freezed
class ShipmentStatus extends AbstractResourceModel with _$ShipmentStatus {
  @JsonSerializable(includeIfNull: false)
  const factory ShipmentStatus({
    int? id,
    String? statusCode,
    JsonNullableType<String>? description,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _ShipmentStatus;

  factory ShipmentStatus.fromJson(Map<String, Object?> json) =>
      _$ShipmentStatusFromJson(json);
}
