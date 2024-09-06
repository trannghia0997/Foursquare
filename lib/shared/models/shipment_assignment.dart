import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_assignment.freezed.dart';
part 'shipment_assignment.g.dart';

@freezed
class ShipmentAssignmentDTO with _$ShipmentAssignmentDTO {
  const factory ShipmentAssignmentDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "staffId") String? staffId,
  }) = _ShipmentAssignmentDTO;

  factory ShipmentAssignmentDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentDTOFromJson(json);

  factory ShipmentAssignmentDTO.fromRecord(RecordModel obj) =>
      ShipmentAssignmentDTO.fromJson(obj.toJson());
}

@unfreezed
class ShipmentAssignmentEditDTO with _$ShipmentAssignmentEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentAssignmentEditDTO({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "staffId") String? staffId,
  }) = _ShipmentAssignmentEditDTO;

  factory ShipmentAssignmentEditDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentEditDTOFromJson(json);
}
