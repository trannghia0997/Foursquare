// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
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
      avatarUrl: json['avatar_url'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
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
      'avatar_url': instance.avatarUrl,
      'phone': instance.phone,
      'role': instance.role,
    };

_$UserCreationDTOImpl _$$UserCreationDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCreationDTOImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailVisibility: json['emailVisibility'] as bool?,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$UserCreationDTOImplToJson(
    _$UserCreationDTOImpl instance) {
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
  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('phone', instance.phone);
  val['role'] = instance.role;
  return val;
}

_$UserUpdateDTOImpl _$$UserUpdateDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserUpdateDTOImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailVisibility: json['emailVisibility'] as bool?,
      oldPassword: json['oldPassword'] as String?,
      password: json['password'] as String?,
      passwordConfirm: json['passwordConfirm'] as String,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$UserUpdateDTOImplToJson(_$UserUpdateDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('emailVisibility', instance.emailVisibility);
  writeNotNull('oldPassword', instance.oldPassword);
  writeNotNull('password', instance.password);
  val['passwordConfirm'] = instance.passwordConfirm;
  writeNotNull('name', instance.name);
  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('phone', instance.phone);
  val['role'] = instance.role;
  return val;
}
