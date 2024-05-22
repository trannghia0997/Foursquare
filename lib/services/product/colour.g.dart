// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColourImpl _$$ColourImplFromJson(Map<String, dynamic> json) => _$ColourImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      hex: json['hex'] as String,
    );

Map<String, dynamic> _$$ColourImplToJson(_$ColourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'hex': instance.hex,
    };
