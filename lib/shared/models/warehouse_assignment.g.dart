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
      status: json['status'] as String,
      note: json['note'] as String?,
      otherInfo: json['other_info'] as String?,
      staffId: json['staff_id'] as String?,
      srcWorkingUnitId: json['src_working_unit_id'] as String,
      dstWorkingUnitId: json['dst_working_unit_id'] as String?,
      internalOrderId: json['internal_order_id'] as String,
    );

Map<String, dynamic> _$$WarehouseAssignmentDTOImplToJson(
        _$WarehouseAssignmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status': instance.status,
      'note': instance.note,
      'other_info': instance.otherInfo,
      'staff_id': instance.staffId,
      'src_working_unit_id': instance.srcWorkingUnitId,
      'dst_working_unit_id': instance.dstWorkingUnitId,
      'internal_order_id': instance.internalOrderId,
    };

_$WarehouseAssignmentEditDTOImpl _$$WarehouseAssignmentEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseAssignmentEditDTOImpl(
      status: json['status'] as String?,
      note: json['note'] as String?,
      otherInfo: json['other_info'] as String?,
      staffId: json['staff_id'] as String?,
      srcWorkingUnitId: json['src_working_unit_id'] as String?,
      dstWorkingUnitId: json['dst_working_unit_id'] as String?,
      internalOrderId: json['internal_order_id'] as String?,
    );

Map<String, dynamic> _$$WarehouseAssignmentEditDTOImplToJson(
    _$WarehouseAssignmentEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('note', instance.note);
  writeNotNull('other_info', instance.otherInfo);
  writeNotNull('staff_id', instance.staffId);
  writeNotNull('src_working_unit_id', instance.srcWorkingUnitId);
  writeNotNull('dst_working_unit_id', instance.dstWorkingUnitId);
  writeNotNull('internal_order_id', instance.internalOrderId);
  return val;
}
