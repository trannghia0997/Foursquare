// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      id: (json['id'] as num?)?.toInt(),
      login: json['login'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      imageUrl: json['imageUrl'] as String?,
      activated: json['activated'] as bool?,
      langKey: json['langKey'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      authorities: (json['authorities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AuthorityTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('login', instance.login);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('activated', instance.activated);
  writeNotNull('langKey', instance.langKey);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('authorities',
      instance.authorities?.map((e) => _$AuthorityTypeEnumMap[e]!).toList());
  return val;
}

const _$AuthorityTypeEnumMap = {
  AuthorityType.admin: 'ROLE_ADMIN',
  AuthorityType.user: 'ROLE_USER',
  AuthorityType.staff: 'ROLE_STAFF',
  AuthorityType.manager: 'ROLE_MANAGER',
};
