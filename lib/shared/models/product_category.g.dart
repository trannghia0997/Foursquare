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
      productId: json['productId'] as String,
      colourId: json['colourId'] as String,
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
      'productId': instance.productId,
      'colourId': instance.colourId,
    };

_$ProductCategoryEditDTOImpl _$$ProductCategoryEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryEditDTOImpl(
      name: json['name'] as String?,
      productId: json['productId'] as String,
      colourId: json['colourId'] as String,
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
  val['productId'] = instance.productId;
  val['colourId'] = instance.colourId;
  return val;
}
