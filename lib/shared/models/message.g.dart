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
      participantId: json['participantId'] as String,
      recipientIds: (json['recipientIds'] as List<dynamic>?)
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
      'participantId': instance.participantId,
      'recipientIds': instance.recipientIds,
    };

_$MessageEditDTOImpl _$$MessageEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$MessageEditDTOImpl(
      type: json['type'] as String,
      content: json['content'] as String,
      participantId: json['participantId'] as String,
      recipientIds: (json['recipientIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MessageEditDTOImplToJson(
    _$MessageEditDTOImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'content': instance.content,
    'participantId': instance.participantId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recipientIds', instance.recipientIds);
  return val;
}
