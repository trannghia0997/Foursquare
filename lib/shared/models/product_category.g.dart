// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCategoryDTOImpl _$$ProductCategoryDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String?,
      productId: json['product_id'] as String,
      colourId: json['colour_id'] as String,
    );

Map<String, dynamic> _$$ProductCategoryDTOImplToJson(
        _$ProductCategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'product_id': instance.productId,
      'colour_id': instance.colourId,
    };

_$ProductCategoryEditDTOImpl _$$ProductCategoryEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryEditDTOImpl(
      name: json['name'] as String?,
      productId: json['product_id'] as String?,
      colourId: json['colour_id'] as String?,
    );

Map<String, dynamic> _$$ProductCategoryEditDTOImplToJson(
    _$ProductCategoryEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('product_id', instance.productId);
  writeNotNull('colour_id', instance.colourId);
  return val;
}
