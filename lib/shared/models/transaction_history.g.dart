// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryDtoImpl _$$TransactionHistoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$TransactionHistoryDtoImplToJson(
        _$TransactionHistoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'statusCodeId': instance.statusCodeId,
      'note': instance.note,
    };
