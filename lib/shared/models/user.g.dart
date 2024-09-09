// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      username: json['username'] as String,
      verified: json['verified'] as bool?,
      emailVisibility: json['emailVisibility'] as bool?,
      email: json['email'] as String?,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'username': instance.username,
      'verified': instance.verified,
      'emailVisibility': instance.emailVisibility,
      'email': instance.email,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'role': _$UserRoleEnumMap[instance.role]!,
    };

const _$UserRoleEnumMap = {
  UserRole.customer: 'customer',
  UserRole.staff: 'staff',
  UserRole.manager: 'manager',
};

_$UserCreationDtoImpl _$$UserCreationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCreationDtoImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailVisibility: json['emailVisibility'] as bool?,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserCreationDtoImplToJson(
    _$UserCreationDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('emailVisibility', instance.emailVisibility);
  val['password'] = instance.password;
  val['passwordConfirm'] = instance.passwordConfirm;
  writeNotNull('name', instance.name);
  writeNotNull('avatarUrl', instance.avatarUrl);
  writeNotNull('phone', instance.phone);
  val['role'] = _$UserRoleEnumMap[instance.role]!;
  return val;
}

_$UserUpdateDtoImpl _$$UserUpdateDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserUpdateDtoImpl(
      username: json['username'] as String?,
      emailVisibility: json['emailVisibility'] as bool?,
      oldPassword: json['oldPassword'] as String?,
      password: json['password'] as String?,
      passwordConfirm: json['passwordConfirm'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      phone: json['phone'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserUpdateDtoImplToJson(_$UserUpdateDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('emailVisibility', instance.emailVisibility);
  writeNotNull('oldPassword', instance.oldPassword);
  writeNotNull('password', instance.password);
  writeNotNull('passwordConfirm', instance.passwordConfirm);
  writeNotNull('name', instance.name);
  writeNotNull('avatarUrl', instance.avatarUrl);
  writeNotNull('phone', instance.phone);
  val['role'] = _$UserRoleEnumMap[instance.role]!;
  return val;
}
