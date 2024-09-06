// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDTOImpl _$$AddressDTOImplFromJson(Map<String, dynamic> json) =>
    _$AddressDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      zipOrPostcode: json['zip_or_postcode'] as String?,
    );

Map<String, dynamic> _$$AddressDTOImplToJson(_$AddressDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'line1': instance.line1,
      'line2': instance.line2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zip_or_postcode': instance.zipOrPostcode,
    };

_$AddressEditDTOImpl _$$AddressEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$AddressEditDTOImpl(
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      zipOrPostcode: json['zip_or_postcode'] as String?,
    );

Map<String, dynamic> _$$AddressEditDTOImplToJson(
    _$AddressEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line1', instance.line1);
  writeNotNull('line2', instance.line2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('zip_or_postcode', instance.zipOrPostcode);
  return val;
}
