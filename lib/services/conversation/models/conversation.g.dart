// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      title: json['title'] as String,
      user1Id: json['user_id_1'] as String,
      user2Id: json['user_id_2'] as String,
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'user_id_1': instance.user1Id,
      'user_id_2': instance.user2Id,
    };
