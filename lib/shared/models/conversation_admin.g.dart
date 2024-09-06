// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationAdminDTOImpl _$$ConversationAdminDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationAdminDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ConversationAdminDTOImplToJson(
        _$ConversationAdminDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };

_$ConversationAdminEditDTOImpl _$$ConversationAdminEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationAdminEditDTOImpl(
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ConversationAdminEditDTOImplToJson(
        _$ConversationAdminEditDTOImpl instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };
