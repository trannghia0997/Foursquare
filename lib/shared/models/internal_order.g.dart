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
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      note: json['note'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      rootOrderId: json['rootOrderId'] as String,
    );

Map<String, dynamic> _$$InternalOrderDTOImplToJson(
        _$InternalOrderDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': _$OrderTypeEnumMap[instance.type]!,
      'note': instance.note,
      'statusCodeId': instance.statusCodeId,
      'rootOrderId': instance.rootOrderId,
    };

const _$OrderTypeEnumMap = {
  OrderType.sale: 'sale',
  OrderType.return_: 'return',
  OrderType.exchange: 'exchange',
  OrderType.transfer: 'transfer',
  OrderType.other: 'other',
};

_$InternalOrderEditDTOImpl _$$InternalOrderEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderEditDTOImpl(
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      note: json['note'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      rootOrderId: json['rootOrderId'] as String,
    );

Map<String, dynamic> _$$InternalOrderEditDTOImplToJson(
    _$InternalOrderEditDTOImpl instance) {
  final val = <String, dynamic>{
    'type': _$OrderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  val['statusCodeId'] = instance.statusCodeId;
  val['rootOrderId'] = instance.rootOrderId;
  return val;
}
