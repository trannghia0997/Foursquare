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
      friendlyName: json['friendlyName'] as String?,
      isDefault: json['isDefault'] as bool?,
      userId: json['userId'] as String,
      addressId: json['addressId'] as String,
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
      'friendlyName': instance.friendlyName,
      'isDefault': instance.isDefault,
      'userId': instance.userId,
      'addressId': instance.addressId,
    };

_$UserAddressEditDTOImpl _$$UserAddressEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAddressEditDTOImpl(
      type: json['type'] as String,
      friendlyName: json['friendlyName'] as String?,
      isDefault: json['isDefault'] as bool?,
      userId: json['userId'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$UserAddressEditDTOImplToJson(
    _$UserAddressEditDTOImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('friendlyName', instance.friendlyName);
  writeNotNull('isDefault', instance.isDefault);
  val['userId'] = instance.userId;
  val['addressId'] = instance.addressId;
  return val;
}
