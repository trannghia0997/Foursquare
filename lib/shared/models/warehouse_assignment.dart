import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'warehouse_assignment.freezed.dart';
part 'warehouse_assignment.g.dart';

@freezed
class WarehouseAssignmentDto with _$WarehouseAssignmentDto {
  const factory WarehouseAssignmentDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "staffId") String? staffId,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
  }) = _WarehouseAssignmentDto;

  factory WarehouseAssignmentDto.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentDtoFromJson(json);

  factory WarehouseAssignmentDto.fromRecord(RecordModel obj) =>
      WarehouseAssignmentDto.fromJson(obj.toJson());
}

@unfreezed
class WarehouseAssignmentEditDto with _$WarehouseAssignmentEditDto {
  @JsonSerializable(includeIfNull: false)
  factory WarehouseAssignmentEditDto({
    @JsonKey(name: "status") required AssignmentStatus status,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "staffId") String? staffId,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
  }) = _WarehouseAssignmentEditDto;

  factory WarehouseAssignmentEditDto.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentEditDtoFromJson(json);
}
