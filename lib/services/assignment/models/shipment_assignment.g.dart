// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentAssignmentImpl _$$ShipmentAssignmentImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentImpl(
      shipmentId: json['shipment_id'] as String,
      userId: json['user_id'] as String?,
      status: $enumDecode(_$ShipmentAssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ShipmentAssignmentImplToJson(
        _$ShipmentAssignmentImpl instance) =>
    <String, dynamic>{
      'shipment_id': instance.shipmentId,
      'user_id': instance.userId,
      'status': _$ShipmentAssignmentStatusEnumMap[instance.status]!,
      'note': instance.note,
    };

const _$ShipmentAssignmentStatusEnumMap = {
  ShipmentAssignmentStatus.pending: 'pending',
  ShipmentAssignmentStatus.assigned: 'assigned',
  ShipmentAssignmentStatus.inProgress: 'in_progress',
  ShipmentAssignmentStatus.completed: 'completed',
  ShipmentAssignmentStatus.cancelled: 'cancelled',
  ShipmentAssignmentStatus.failed: 'failed',
  ShipmentAssignmentStatus.other: 'other',
};
