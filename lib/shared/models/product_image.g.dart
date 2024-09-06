// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageDTOImpl _$$ProductImageDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductImageDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      imageUrl: json['image_url'] as String,
      altText: json['alt_text'] as String?,
      productId: json['product_id'] as String,
    );

Map<String, dynamic> _$$ProductImageDTOImplToJson(
        _$ProductImageDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'image_url': instance.imageUrl,
      'alt_text': instance.altText,
      'product_id': instance.productId,
    };

_$ProductImageEditDTOImpl _$$ProductImageEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductImageEditDTOImpl(
      imageUrl: json['image_url'] as String?,
      altText: json['alt_text'] as String?,
      productId: json['product_id'] as String?,
    );

Map<String, dynamic> _$$ProductImageEditDTOImplToJson(
    _$ProductImageEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image_url', instance.imageUrl);
  writeNotNull('alt_text', instance.altText);
  writeNotNull('product_id', instance.productId);
  return val;
}
