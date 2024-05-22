// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      user1: json['user1'] as String,
      user2: json['user2'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'user1': instance.user1,
      'user2': instance.user2,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
