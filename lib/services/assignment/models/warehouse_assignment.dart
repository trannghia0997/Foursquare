import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'warehouse_assignment.freezed.dart';
part 'warehouse_assignment.g.dart';

enum WarehouseAssignmentStatus {
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
class WarehouseAssignment with _$WarehouseAssignment {
  const factory WarehouseAssignment({
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'src_unit_id') required String sourceUnitId,
    @JsonKey(name: 'dst_unit_id') String? destinationUnitId,
    required WarehouseAssignmentStatus status,
    String? note,
  }) = _WarehouseAssignment;

  factory WarehouseAssignment.fromJson(Map<String, Object?> json) =>
      _$WarehouseAssignmentFromJson(json);
}
