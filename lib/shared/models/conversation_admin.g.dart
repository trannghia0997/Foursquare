// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationAdminDtoImpl _$$ConversationAdminDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationAdminDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ConversationAdminDtoImplToJson(
        _$ConversationAdminDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };

_$ConversationAdminEditDtoImpl _$$ConversationAdminEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationAdminEditDtoImpl(
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ConversationAdminEditDtoImplToJson(
        _$ConversationAdminEditDtoImpl instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };
