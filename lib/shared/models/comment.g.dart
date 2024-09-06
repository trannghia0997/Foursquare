// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDTOImpl _$$CommentDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommentDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      rating: (json['rating'] as num?)?.toInt(),
      content: json['content'] as String?,
      productId: json['product_id'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$CommentDTOImplToJson(_$CommentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'rating': instance.rating,
      'content': instance.content,
      'product_id': instance.productId,
      'user_id': instance.userId,
    };

_$CommentEditDTOImpl _$$CommentEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommentEditDTOImpl(
      rating: (json['rating'] as num?)?.toInt(),
      content: json['content'] as String?,
      productId: json['product_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$CommentEditDTOImplToJson(
    _$CommentEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rating', instance.rating);
  writeNotNull('content', instance.content);
  writeNotNull('product_id', instance.productId);
  writeNotNull('user_id', instance.userId);
  return val;
}
