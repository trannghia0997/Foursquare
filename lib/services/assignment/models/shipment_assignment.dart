import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'shipment_assignment.freezed.dart';
part 'shipment_assignment.g.dart';

enum ShipmentAssignmentStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('assigned')
  assigned,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('failed')
  failed,
  @JsonValue('other')
  other
}

@freezed
class ShipmentAssignment with _$ShipmentAssignment implements BaseModel {
  const factory ShipmentAssignment({
    @JsonKey(name: 'shipment_id') required String shipmentId,
    @JsonKey(name: 'user_id') String? userId,
    required ShipmentAssignmentStatus status,
    String? note,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _ShipmentAssignment;

  factory ShipmentAssignment.fromRecord(RecordModel record) =>
      ShipmentAssignment.fromJson(record.toJson()).copyWith(record: record);

  factory ShipmentAssignment.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentFromJson(json);
}
