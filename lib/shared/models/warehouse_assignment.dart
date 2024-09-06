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
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "other_info") String? otherInfo,
    @JsonKey(name: "staff_id") String? staffId,
    @JsonKey(name: "src_working_unit_id") required String srcWorkingUnitId,
    @JsonKey(name: "dst_working_unit_id") String? dstWorkingUnitId,
    @JsonKey(name: "internal_order_id") required String internalOrderId,
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
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "other_info") String? otherInfo,
    @JsonKey(name: "staff_id") String? staffId,
    @JsonKey(name: "src_working_unit_id") String? srcWorkingUnitId,
    @JsonKey(name: "dst_working_unit_id") String? dstWorkingUnitId,
    @JsonKey(name: "internal_order_id") String? internalOrderId,
  }) = _WarehouseAssignmentEditDTO;

  factory WarehouseAssignmentEditDTO.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentEditDTOFromJson(json);
}
