// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressDTOImpl _$$UserAddressDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: json['type'] as String,
      friendlyName: json['friendly_name'] as String?,
      isDefault: json['is_default'] as bool?,
      userId: json['user_id'] as String,
      addressId: json['address_id'] as String,
    );

Map<String, dynamic> _$$UserAddressDTOImplToJson(
        _$UserAddressDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': instance.type,
      'friendly_name': instance.friendlyName,
      'is_default': instance.isDefault,
      'user_id': instance.userId,
      'address_id': instance.addressId,
    };

_$UserAddressEditDTOImpl _$$UserAddressEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAddressEditDTOImpl(
      type: json['type'] as String?,
      friendlyName: json['friendly_name'] as String?,
      isDefault: json['is_default'] as bool?,
      userId: json['user_id'] as String?,
      addressId: json['address_id'] as String?,
    );

Map<String, dynamic> _$$UserAddressEditDTOImplToJson(
    _$UserAddressEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('friendly_name', instance.friendlyName);
  writeNotNull('is_default', instance.isDefault);
  writeNotNull('user_id', instance.userId);
  writeNotNull('address_id', instance.addressId);
  return val;
}
