// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingUnitImpl _$$WorkingUnitImplFromJson(Map<String, dynamic> json) =>
    _$WorkingUnitImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$WorkingUnitTypeEnumMap, json['type']),
      imageUri: json['imageUri'] == null
          ? null
          : JsonNullableType<String>.fromJson(json['imageUri']),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      address: json['address'] == null
          ? null
          : JsonNullableType<Address>.fromJson(json['address']),
    );

Map<String, dynamic> _$$WorkingUnitImplToJson(_$WorkingUnitImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$WorkingUnitTypeEnumMap[instance.type]);
  writeNotNull('imageUri', instance.imageUri);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('address', instance.address);
  return val;
}

const _$WorkingUnitTypeEnumMap = {
  WorkingUnitType.warehouse: 'WAREHOUSE',
  WorkingUnitType.office: 'OFFICE',
  WorkingUnitType.delivery: 'DELIVERY',
  WorkingUnitType.other: 'OTHER',
};
