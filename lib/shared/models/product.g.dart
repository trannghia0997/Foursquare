// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      description: json['description'] as String?,
      expectedPrice: (json['expectedPrice'] as num?)?.toInt(),
      provider: json['provider'] as String?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
      'expectedPrice': instance.expectedPrice,
      'provider': instance.provider,
      'tagIds': instance.tagIds,
    };

_$ProductEditDtoImpl _$$ProductEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductEditDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      expectedPrice: (json['expectedPrice'] as num?)?.toInt(),
      provider: json['provider'] as String?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductEditDtoImplToJson(
    _$ProductEditDtoImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('expectedPrice', instance.expectedPrice);
  writeNotNull('provider', instance.provider);
  writeNotNull('tagIds', instance.tagIds);
  return val;
}
