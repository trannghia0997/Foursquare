// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      provider: json['provider'] as String,
      image: json['image'] as String,
      otherInfo: json['other_info'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
      'provider': instance.provider,
      'image': instance.image,
      'other_info': instance.otherInfo,
    };
