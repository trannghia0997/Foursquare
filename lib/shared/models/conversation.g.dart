// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDtoImpl _$$ConversationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ConversationDtoImplToJson(
        _$ConversationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'title': instance.title,
    };

_$ConversationEditDtoImpl _$$ConversationEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationEditDtoImpl(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ConversationEditDtoImplToJson(
        _$ConversationEditDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
