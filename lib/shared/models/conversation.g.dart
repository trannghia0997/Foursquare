// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDTOImpl _$$ConversationDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ConversationDTOImplToJson(
        _$ConversationDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'title': instance.title,
    };

_$ConversationEditDTOImpl _$$ConversationEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationEditDTOImpl(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ConversationEditDTOImplToJson(
    _$ConversationEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
