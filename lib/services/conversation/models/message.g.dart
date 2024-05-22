// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      conversationId: json['conversation_id'] as String,
      userId: json['user_id'] as String,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      file: json['file'] as String?,
      content: json['content'] as String?,
      isSeen: json['is_seen'] as bool,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'conversation_id': instance.conversationId,
      'user_id': instance.userId,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'file': instance.file,
      'content': instance.content,
      'is_seen': instance.isSeen,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.other: 'other',
};
