// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      addressIdList:
          (json['address_ids'] as List<dynamic>).map((e) => e as String),
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      name: json['name'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      username: json['username'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'address_ids': instance.addressIdList.toList(),
      'avatar': instance.avatar,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'name': instance.name,
      'phone': instance.phone,
      'role': _$RoleEnumMap[instance.role]!,
      'username': instance.username,
      'verified': instance.verified,
    };

const _$RoleEnumMap = {
  Role.customer: 'customer',
  Role.salesperson: 'salesperson',
  Role.warehouse: 'warehouse',
  Role.shipper: 'shipper',
  Role.manager: 'manager',
};
