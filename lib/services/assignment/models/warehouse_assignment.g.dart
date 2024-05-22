// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseAssignmentImpl _$$WarehouseAssignmentImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      orderId: json['order_id'] as String,
      userId: json['user_id'] as String?,
      sourceUnitId: json['src_unit_id'] as String,
      destinationUnitId: json['dst_unit_id'] as String?,
      status: $enumDecode(_$WarehouseAssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$WarehouseAssignmentImplToJson(
        _$WarehouseAssignmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'src_unit_id': instance.sourceUnitId,
      'dst_unit_id': instance.destinationUnitId,
      'status': _$WarehouseAssignmentStatusEnumMap[instance.status]!,
      'note': instance.note,
    };

const _$WarehouseAssignmentStatusEnumMap = {
  WarehouseAssignmentStatus.pending: 'pending',
  WarehouseAssignmentStatus.assigned: 'assigned',
  WarehouseAssignmentStatus.inProgress: 'in_progress',
  WarehouseAssignmentStatus.completed: 'completed',
  WarehouseAssignmentStatus.cancelled: 'cancelled',
  WarehouseAssignmentStatus.failed: 'failed',
  WarehouseAssignmentStatus.other: 'other',
};
