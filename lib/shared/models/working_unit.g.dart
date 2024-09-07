// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingUnitDtoImpl _$$WorkingUnitDtoImplFromJson(Map<String, dynamic> json) =>
    _$WorkingUnitDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      type: $enumDecode(_$WorkingUnitTypeEnumMap, json['type']),
      imageUrl: json['imageUrl'] as String?,
      addressId: json['addressId'] as String?,
    );

Map<String, dynamic> _$$WorkingUnitDtoImplToJson(
        _$WorkingUnitDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'type': _$WorkingUnitTypeEnumMap[instance.type]!,
      'imageUrl': instance.imageUrl,
      'addressId': instance.addressId,
    };

const _$WorkingUnitTypeEnumMap = {
  WorkingUnitType.warehouse: 'warehouse',
  WorkingUnitType.office: 'office',
  WorkingUnitType.delivery: 'delivery',
  WorkingUnitType.other: 'other',
};

_$WorkingUnitEditDtoImpl _$$WorkingUnitEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingUnitEditDtoImpl(
      name: json['name'] as String,
      type: $enumDecode(_$WorkingUnitTypeEnumMap, json['type']),
      imageUrl: json['imageUrl'] as String?,
      addressId: json['addressId'] as String?,
    );

Map<String, dynamic> _$$WorkingUnitEditDtoImplToJson(
    _$WorkingUnitEditDtoImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'type': _$WorkingUnitTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('addressId', instance.addressId);
  return val;
}
