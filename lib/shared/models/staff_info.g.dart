// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffInfoDTOImpl _$$StaffInfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$StaffInfoDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      statusCode: json['status_code'] as String,
      role: json['role'] as String,
      userId: json['user_id'] as String,
      workingUnitId: json['working_unit_id'] as String?,
    );

Map<String, dynamic> _$$StaffInfoDTOImplToJson(_$StaffInfoDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status_code': instance.statusCode,
      'role': instance.role,
      'user_id': instance.userId,
      'working_unit_id': instance.workingUnitId,
    };

_$StaffInfoEditDTOImpl _$$StaffInfoEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffInfoEditDTOImpl(
      statusCode: json['status_code'] as String?,
      role: json['role'] as String?,
      userId: json['user_id'] as String?,
      workingUnitId: json['working_unit_id'] as String?,
    );

Map<String, dynamic> _$$StaffInfoEditDTOImplToJson(
    _$StaffInfoEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status_code', instance.statusCode);
  writeNotNull('role', instance.role);
  writeNotNull('user_id', instance.userId);
  writeNotNull('working_unit_id', instance.workingUnitId);
  return val;
}
