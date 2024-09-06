// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_status_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceStatusCodeDTOImpl _$$InvoiceStatusCodeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceStatusCodeDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      statusCode: json['statusCode'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$InvoiceStatusCodeDTOImplToJson(
        _$InvoiceStatusCodeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'statusCode': instance.statusCode,
      'description': instance.description,
    };
