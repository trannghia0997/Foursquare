import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'warehouse_assignment.freezed.dart';
part 'warehouse_assignment.g.dart';

@freezed
class WarehouseAssignment extends AbstractResourceModel
    with _$WarehouseAssignment {
  @JsonSerializable(includeIfNull: false)
  const factory WarehouseAssignment({
    String? id,
    AssignmentStatus? status,
    JsonNullableType<String>? note,
    JsonNullableType<String>? otherInfo,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    JsonNullableType<User>? user,
    WorkingUnit? sourceWorkingUnit,
    JsonNullableType<WorkingUnit>? targetWorkingUnit,
    Order? order,
  }) = _WarehouseAssignment;

  factory WarehouseAssignment.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentFromJson(json);
}
