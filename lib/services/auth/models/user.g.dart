// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      avatar:
          json['avatar'] == null ? null : Uri.parse(json['avatar'] as String),
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      workUnitId: json['work_unit_id'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar?.toString(),
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'role': _$RoleEnumMap[instance.role]!,
      'work_unit_id': instance.workUnitId,
    };

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.salesperson: 'salesperson',
  Role.warehouse: 'warehouse',
  Role.shipper: 'shipper',
  Role.manager: 'manager',
};
