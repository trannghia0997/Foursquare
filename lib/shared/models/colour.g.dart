// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColourImpl _$$ColourImplFromJson(Map<String, dynamic> json) => _$ColourImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      hexCode: json['hexCode'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
    );

Map<String, dynamic> _$$ColourImplToJson(_$ColourImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('hexCode', instance.hexCode);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  return val;
}
