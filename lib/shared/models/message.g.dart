// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDTOImpl _$$MessageDTOImplFromJson(Map<String, dynamic> json) =>
    _$MessageDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: json['type'] as String,
      content: json['content'] as String,
      participantId: json['participant_id'] as String,
      recipientIds: (json['recipient_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MessageDTOImplToJson(_$MessageDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': instance.type,
      'content': instance.content,
      'participant_id': instance.participantId,
      'recipient_ids': instance.recipientIds,
    };

_$MessageEditDTOImpl _$$MessageEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$MessageEditDTOImpl(
      type: json['type'] as String?,
      content: json['content'] as String?,
      participantId: json['participant_id'] as String?,
      recipientIds: (json['recipient_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MessageEditDTOImplToJson(
    _$MessageEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('content', instance.content);
  writeNotNull('participant_id', instance.participantId);
  writeNotNull('recipient_ids', instance.recipientIds);
  return val;
}
