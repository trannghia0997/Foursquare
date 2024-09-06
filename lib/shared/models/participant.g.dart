// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantDTOImpl _$$ParticipantDTOImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ParticipantDTOImplToJson(
        _$ParticipantDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };

_$ParticipantEditDTOImpl _$$ParticipantEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipantEditDTOImpl(
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ParticipantEditDTOImplToJson(
        _$ParticipantEditDTOImpl instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'userId': instance.userId,
    };
