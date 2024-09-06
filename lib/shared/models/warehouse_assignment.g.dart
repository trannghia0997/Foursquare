// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseAssignmentDTOImpl _$$WarehouseAssignmentDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      staffId: json['staffId'] as String?,
      srcWorkingUnitId: json['srcWorkingUnitId'] as String,
      dstWorkingUnitId: json['dstWorkingUnitId'] as String?,
      internalOrderId: json['internalOrderId'] as String,
    );

Map<String, dynamic> _$$WarehouseAssignmentDTOImplToJson(
        _$WarehouseAssignmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status': _$AssignmentStatusEnumMap[instance.status]!,
      'note': instance.note,
      'otherInfo': instance.otherInfo,
      'staffId': instance.staffId,
      'srcWorkingUnitId': instance.srcWorkingUnitId,
      'dstWorkingUnitId': instance.dstWorkingUnitId,
      'internalOrderId': instance.internalOrderId,
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

_$WarehouseAssignmentEditDTOImpl _$$WarehouseAssignmentEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentEditDTOImpl(
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      staffId: json['staffId'] as String?,
      srcWorkingUnitId: json['srcWorkingUnitId'] as String,
      dstWorkingUnitId: json['dstWorkingUnitId'] as String?,
      internalOrderId: json['internalOrderId'] as String,
    );

Map<String, dynamic> _$$WarehouseAssignmentEditDTOImplToJson(
    _$WarehouseAssignmentEditDTOImpl instance) {
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
  writeNotNull('staffId', instance.staffId);
  val['srcWorkingUnitId'] = instance.srcWorkingUnitId;
  writeNotNull('dstWorkingUnitId', instance.dstWorkingUnitId);
  val['internalOrderId'] = instance.internalOrderId;
  return val;
}
