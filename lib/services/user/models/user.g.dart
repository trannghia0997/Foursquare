// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      avatar: json['avatar'] as String?,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      username: json['username'] as String,
      workUnitId: json['work_unit_id'] as String?,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'name': instance.name,
      'phone': instance.phone,
      'role': _$RoleEnumMap[instance.role]!,
      'username': instance.username,
      'work_unit_id': instance.workUnitId,
      'verified': instance.verified,
    };

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.salesperson: 'salesperson',
  Role.warehouse: 'warehouse',
  Role.shipper: 'shipper',
  Role.manager: 'manager',
};
