// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalOrderDTOImpl _$$InternalOrderDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: json['type'] as String,
      note: json['note'] as String?,
      statusCodeId: json['status_code_id'] as String,
      rootOrderId: json['root_order_id'] as String,
    );

Map<String, dynamic> _$$InternalOrderDTOImplToJson(
        _$InternalOrderDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': instance.type,
      'note': instance.note,
      'status_code_id': instance.statusCodeId,
      'root_order_id': instance.rootOrderId,
    };

_$InternalOrderEditDTOImpl _$$InternalOrderEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderEditDTOImpl(
      type: json['type'] as String?,
      note: json['note'] as String?,
      statusCodeId: json['status_code_id'] as String?,
      rootOrderId: json['root_order_id'] as String?,
    );

Map<String, dynamic> _$$InternalOrderEditDTOImplToJson(
    _$InternalOrderEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('note', instance.note);
  writeNotNull('status_code_id', instance.statusCodeId);
  writeNotNull('root_order_id', instance.rootOrderId);
  return val;
}
