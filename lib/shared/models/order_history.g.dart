// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryDTOImpl _$$OrderHistoryDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      note: json['note'] as String?,
      orderId: json['order_id'] as String,
      statusCodeId: json['status_code_id'] as String,
    );

Map<String, dynamic> _$$OrderHistoryDTOImplToJson(
        _$OrderHistoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'note': instance.note,
      'order_id': instance.orderId,
      'status_code_id': instance.statusCodeId,
    };
