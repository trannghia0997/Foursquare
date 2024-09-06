import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'warehouse_assignment.freezed.dart';
part 'warehouse_assignment.g.dart';

@freezed
class WarehouseAssignmentDTO with _$WarehouseAssignmentDTO {
  const factory WarehouseAssignmentDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "staffId") String? staffId,
    @JsonKey(name: "srcWorkingUnitId") required String srcWorkingUnitId,
    @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
  }) = _WarehouseAssignmentDTO;

  factory WarehouseAssignmentDTO.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentDTOFromJson(json);

  factory WarehouseAssignmentDTO.fromRecord(RecordModel obj) =>
      WarehouseAssignmentDTO.fromJson(obj.toJson());
}

@unfreezed
class WarehouseAssignmentEditDTO with _$WarehouseAssignmentEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory WarehouseAssignmentEditDTO({
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "staffId") String? staffId,
    @JsonKey(name: "srcWorkingUnitId") required String srcWorkingUnitId,
    @JsonKey(name: "dstWorkingUnitId") String? dstWorkingUnitId,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
  }) = _WarehouseAssignmentEditDTO;

  factory WarehouseAssignmentEditDTO.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentEditDTOFromJson(json);
}
