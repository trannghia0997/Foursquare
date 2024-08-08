// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$AddressTypeEnumMap, json['type']),
      friendlyName: json['friendlyName'] as String?,
      isDefault: json['isDefault'] as bool? ?? false,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$AddressTypeEnumMap[instance.type]);
  val['friendlyName'] = instance.friendlyName;
  writeNotNull('isDefault', instance.isDefault);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('user', instance.user);
  writeNotNull('address', instance.address);
  return val;
}

const _$AddressTypeEnumMap = {
  AddressType.home: 'HOME',
  AddressType.work: 'WORK',
  AddressType.billing: 'BILLING',
  AddressType.shipping: 'SHIPPING',
  AddressType.other: 'OTHER',
};
