// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryDtoImpl _$$OrderHistoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      statusCodeId: json['statusCodeId'] as String,
    );

Map<String, dynamic> _$$OrderHistoryDtoImplToJson(
        _$OrderHistoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'note': instance.note,
      'orderId': instance.orderId,
      'statusCodeId': instance.statusCodeId,
    };
