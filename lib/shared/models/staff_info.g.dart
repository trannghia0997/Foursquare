// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffInfoDtoImpl _$$StaffInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$StaffInfoDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      statusCode: $enumDecode(_$StaffStatusEnumMap, json['statusCode']),
      role: $enumDecode(_$StaffRoleEnumMap, json['role']),
      userId: json['userId'] as String,
      workingUnitId: json['workingUnitId'] as String?,
    );

Map<String, dynamic> _$$StaffInfoDtoImplToJson(_$StaffInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'statusCode': _$StaffStatusEnumMap[instance.statusCode]!,
      'role': _$StaffRoleEnumMap[instance.role]!,
      'userId': instance.userId,
      'workingUnitId': instance.workingUnitId,
    };

const _$StaffStatusEnumMap = {
  StaffStatus.active: 'active',
  StaffStatus.inactive: 'inactive',
  StaffStatus.suspended: 'suspended',
  StaffStatus.terminated: 'terminated',
  StaffStatus.other: 'other',
};

const _$StaffRoleEnumMap = {
  StaffRole.salesperson: 'salesperson',
  StaffRole.warehouse: 'warehouse',
  StaffRole.delivery: 'delivery',
  StaffRole.other: 'other',
};

_$StaffInfoEditDtoImpl _$$StaffInfoEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffInfoEditDtoImpl(
      statusCode: $enumDecode(_$StaffStatusEnumMap, json['statusCode']),
      role: $enumDecode(_$StaffRoleEnumMap, json['role']),
      userId: json['userId'] as String,
      workingUnitId: json['workingUnitId'] as String?,
    );

Map<String, dynamic> _$$StaffInfoEditDtoImplToJson(
    _$StaffInfoEditDtoImpl instance) {
  final val = <String, dynamic>{
    'statusCode': _$StaffStatusEnumMap[instance.statusCode]!,
    'role': _$StaffRoleEnumMap[instance.role]!,
    'userId': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('workingUnitId', instance.workingUnitId);
  return val;
}
