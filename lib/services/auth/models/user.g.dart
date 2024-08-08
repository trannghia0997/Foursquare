// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      avatar: json['avatar'] as String?,
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      staffStatus: $enumDecode(_$StaffStatusEnumMap, json['staffStatus']),
      role: $enumDecode(_$RoleEnumMap, json['role']),
      workUnitId: json['work_unit_id'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'staffStatus': _$StaffStatusEnumMap[instance.staffStatus]!,
      'role': _$RoleEnumMap[instance.role]!,
      'work_unit_id': instance.workUnitId,
    };

const _$StaffStatusEnumMap = {
  StaffStatus.working: 'working',
  StaffStatus.absent: 'absent',
  StaffStatus.free: 'free',
  StaffStatus.quited: 'quited',
  StaffStatus.none: 'none',
};

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.salesperson: 'salesperson',
  Role.warehouse: 'warehouse',
  Role.shipper: 'shipper',
  Role.manager: 'manager',
};
