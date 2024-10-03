import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_assignment.freezed.dart';
part 'shipment_assignment.g.dart';

@freezed
class ShipmentAssignmentDto with _$ShipmentAssignmentDto {
  const factory ShipmentAssignmentDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "staffId") String? staffId,
  }) = _ShipmentAssignmentDto;

  factory ShipmentAssignmentDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentDtoFromJson(json);

  factory ShipmentAssignmentDto.fromRecord(RecordModel obj) =>
      ShipmentAssignmentDto.fromJson(obj.toJson());
}

@unfreezed
class ShipmentAssignmentEditDto with _$ShipmentAssignmentEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentAssignmentEditDto({
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "staffId") String? staffId,
  }) = _ShipmentAssignmentEditDto;

  factory ShipmentAssignmentEditDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentEditDtoFromJson(json);
}
