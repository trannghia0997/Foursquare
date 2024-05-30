// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      userId: json['user_id'] as String,
      addressId: json['address_id'] as String,
      friendlyName: json['friendly_name'] as String,
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'address_id': instance.addressId,
      'friendly_name': instance.friendlyName,
      'is_default': instance.isDefault,
    };
