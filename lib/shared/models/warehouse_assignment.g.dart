// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseAssignmentDtoImpl _$$WarehouseAssignmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      staffId: json['staffId'] as String?,
      internalOrderId: json['internalOrderId'] as String,
    );

Map<String, dynamic> _$$WarehouseAssignmentDtoImplToJson(
        _$WarehouseAssignmentDtoImpl instance) =>
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

_$WarehouseAssignmentEditDtoImpl _$$WarehouseAssignmentEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentEditDtoImpl(
      status: $enumDecode(_$AssignmentStatusEnumMap, json['status']),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      staffId: json['staffId'] as String?,
      internalOrderId: json['internalOrderId'] as String,
    );

Map<String, dynamic> _$$WarehouseAssignmentEditDtoImplToJson(
    _$WarehouseAssignmentEditDtoImpl instance) {
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
  val['internalOrderId'] = instance.internalOrderId;
  return val;
}
