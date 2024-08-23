// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffInfoImpl _$$StaffInfoImplFromJson(Map<String, dynamic> json) =>
    _$StaffInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StaffStatusEnumMap, json['status']),
      role: $enumDecodeNullable(_$StaffRoleEnumMap, json['role']),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      workingUnit: json['workingUnit'] == null
          ? null
          : JsonNullableType<WorkingUnit>.fromJson(json['workingUnit']),
    );

Map<String, dynamic> _$$StaffInfoImplToJson(_$StaffInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('status', _$StaffStatusEnumMap[instance.status]);
  writeNotNull('role', _$StaffRoleEnumMap[instance.role]);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('user', instance.user);
  writeNotNull('workingUnit', instance.workingUnit);
  return val;
}

const _$StaffStatusEnumMap = {
  StaffStatus.active: 'ACTIVE',
  StaffStatus.inactive: 'INACTIVE',
  StaffStatus.suspended: 'SUSPENDED',
  StaffStatus.terminated: 'TERMINATED',
  StaffStatus.other: 'OTHER',
};

const _$StaffRoleEnumMap = {
  StaffRole.salesperson: 'SALESPERSON',
  StaffRole.warehouse: 'WAREHOUSE',
  StaffRole.delivery: 'DELIVERY',
  StaffRole.manager: 'MANAGER',
  StaffRole.other: 'OTHER',
};
