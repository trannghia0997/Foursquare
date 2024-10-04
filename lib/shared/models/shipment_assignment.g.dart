// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentAssignmentDtoImpl _$$ShipmentAssignmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      shipmentId: json['shipmentId'] as String,
      staffId: json['staffId'] as String?,
    );

Map<String, dynamic> _$$ShipmentAssignmentDtoImplToJson(
        _$ShipmentAssignmentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status': _$AssignmentStatusEnumMap[instance.status]!,
      'note': instance.note,
      'shipmentId': instance.shipmentId,
      'staffId': instance.staffId,
    };

const _$AssignmentStatusEnumMap = {
  AssignmentStatus.pending: 'pending',
  AssignmentStatus.assigned: 'assigned',
  AssignmentStatus.inProgress: 'in_progress',
  AssignmentStatus.completed: 'completed',
  AssignmentStatus.cancelled: 'cancelled',
  AssignmentStatus.failed: 'failed',
  AssignmentStatus.other: 'other',
};

_$ShipmentAssignmentEditDtoImpl _$$ShipmentAssignmentEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentEditDtoImpl(
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      shipmentId: json['shipmentId'] as String,
      staffId: json['staffId'] as String?,
    );

Map<String, dynamic> _$$ShipmentAssignmentEditDtoImplToJson(
    _$ShipmentAssignmentEditDtoImpl instance) {
  final val = <String, dynamic>{
    'status': _$AssignmentStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  val['shipmentId'] = instance.shipmentId;
  writeNotNull('staffId', instance.staffId);
  return val;
}
