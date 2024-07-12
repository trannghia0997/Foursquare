import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'warehouse_assignment.freezed.dart';
part 'warehouse_assignment.g.dart';

@freezed
class WarehouseAssignment with _$WarehouseAssignment {
  @JsonSerializable(includeIfNull: false)
  const factory WarehouseAssignment({
    String? id,
    AssignmentStatus? status,
    @JsonKey(includeIfNull: true) String? note,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    WorkingUnit? sourceWorkingUnit,
    @JsonKey(includeIfNull: true) WorkingUnit? targetWorkingUnit,
    Order? order,
  }) = _WarehouseAssignment;

  factory WarehouseAssignment.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentFromJson(json);
}
