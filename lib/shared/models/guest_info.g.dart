// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestInfoDtoImpl _$$GuestInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$GuestInfoDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$GuestInfoDtoImplToJson(_$GuestInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'addressId': instance.addressId,
    };

_$GuestInfoEditDtoImpl _$$GuestInfoEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GuestInfoEditDtoImpl(
      name: json['name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$GuestInfoEditDtoImplToJson(
    _$GuestInfoEditDtoImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['phone'] = instance.phone;
  val['addressId'] = instance.addressId;
  return val;
}
