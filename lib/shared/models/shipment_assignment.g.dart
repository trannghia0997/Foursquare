// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentAssignmentDTOImpl _$$ShipmentAssignmentDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      shipmentId: json['shipmentId'] as String,
      staffId: json['staffId'] as String?,
    );

Map<String, dynamic> _$$ShipmentAssignmentDTOImplToJson(
        _$ShipmentAssignmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status': _$AssignmentStatusEnumMap[instance.status]!,
      'note': instance.note,
      'otherInfo': instance.otherInfo,
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

_$ShipmentAssignmentEditDTOImpl _$$ShipmentAssignmentEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentAssignmentEditDTOImpl(
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      shipmentId: json['shipmentId'] as String,
      staffId: json['staffId'] as String?,
    );

Map<String, dynamic> _$$ShipmentAssignmentEditDTOImplToJson(
    _$ShipmentAssignmentEditDTOImpl instance) {
  final val = <String, dynamic>{
    'status': _$AssignmentStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('otherInfo', instance.otherInfo);
  val['shipmentId'] = instance.shipmentId;
  writeNotNull('staffId', instance.staffId);
  return val;
}
