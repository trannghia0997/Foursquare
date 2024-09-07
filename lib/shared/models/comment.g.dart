// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDtoImpl _$$CommentDtoImplFromJson(Map<String, dynamic> json) =>
    _$CommentDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      rating: (json['rating'] as num?)?.toInt(),
      content: json['content'] as String?,
      productId: json['productId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CommentDtoImplToJson(_$CommentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'rating': instance.rating,
      'content': instance.content,
      'productId': instance.productId,
      'userId': instance.userId,
    };

_$CommentEditDtoImpl _$$CommentEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$CommentEditDtoImpl(
      rating: (json['rating'] as num?)?.toInt(),
      content: json['content'] as String?,
      productId: json['productId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CommentEditDtoImplToJson(
    _$CommentEditDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rating', instance.rating);
  writeNotNull('content', instance.content);
  val['productId'] = instance.productId;
  val['userId'] = instance.userId;
  return val;
}
