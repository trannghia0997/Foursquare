// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      content: json['content'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      participant: json['participant'] == null
          ? null
          : JsonNullableType<Participant>.fromJson(json['participant']),
      seenParticipants: json['seenParticipants'] == null
          ? null
          : JsonNullableType<List<Participant>>.fromJson(
              json['seenParticipants']),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$MessageTypeEnumMap[instance.type]);
  writeNotNull('content', instance.content);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('participant', instance.participant);
  writeNotNull('seenParticipants', instance.seenParticipants);
  return val;
}

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.other: 'OTHER',
};
