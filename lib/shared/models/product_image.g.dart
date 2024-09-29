// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageDtoImpl _$$ProductImageDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductImageDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      imageUrl: json['imageUrl'] as String,
      altText: json['altText'] as String?,
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$$ProductImageDtoImplToJson(
        _$ProductImageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'altText': instance.altText,
      'productId': instance.productId,
    };

_$ProductImageEditDtoImpl _$$ProductImageEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductImageEditDtoImpl(
      imageUrl: json['imageUrl'] as String,
      altText: json['altText'] as String?,
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$$ProductImageEditDtoImplToJson(
    _$ProductImageEditDtoImpl instance) {
  final val = <String, dynamic>{
    'imageUrl': instance.imageUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('altText', instance.altText);
  val['productId'] = instance.productId;
  return val;
}
