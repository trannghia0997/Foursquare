// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingUnitDTOImpl _$$WorkingUnitDTOImplFromJson(Map<String, dynamic> json) =>
    _$WorkingUnitDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      type: json['type'] as String,
      imageUrl: json['image_url'] as String?,
      addressId: json['address_id'] as String?,
    );

Map<String, dynamic> _$$WorkingUnitDTOImplToJson(
        _$WorkingUnitDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'type': instance.type,
      'image_url': instance.imageUrl,
      'address_id': instance.addressId,
    };

_$WorkingUnitEditDTOImpl _$$WorkingUnitEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingUnitEditDTOImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      imageUrl: json['image_url'] as String?,
      addressId: json['address_id'] as String?,
    );

Map<String, dynamic> _$$WorkingUnitEditDTOImplToJson(
    _$WorkingUnitEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('image_url', instance.imageUrl);
  writeNotNull('address_id', instance.addressId);
  return val;
}
