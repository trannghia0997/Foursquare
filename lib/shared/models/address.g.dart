// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
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
      zipOrPostcode: json['zipOrPostcode'] as String?,
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
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
      'zipOrPostcode': instance.zipOrPostcode,
    };

_$AddressEditDtoImpl _$$AddressEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressEditDtoImpl(
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      zipOrPostcode: json['zipOrPostcode'] as String?,
    );

Map<String, dynamic> _$$AddressEditDtoImplToJson(
    _$AddressEditDtoImpl instance) {
  final val = <String, dynamic>{
    'line1': instance.line1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line2', instance.line2);
  val['city'] = instance.city;
  val['state'] = instance.state;
  val['country'] = instance.country;
  writeNotNull('zipOrPostcode', instance.zipOrPostcode);
  return val;
}
