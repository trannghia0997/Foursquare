// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalOrderDtoImpl _$$InternalOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      note: json['note'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      rootOrderId: json['rootOrderId'] as String,
      shipmentId: json['shipmentId'] as String,
    );

Map<String, dynamic> _$$InternalOrderDtoImplToJson(
        _$InternalOrderDtoImpl instance) =>
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
      'shipmentId': instance.shipmentId,
    };

const _$OrderTypeEnumMap = {
  OrderType.sale: 'sale',
  OrderType.return_: 'return',
  OrderType.exchange: 'exchange',
  OrderType.transfer: 'transfer',
  OrderType.other: 'other',
};

_$InternalOrderEditDtoImpl _$$InternalOrderEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderEditDtoImpl(
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      note: json['note'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      rootOrderId: json['rootOrderId'] as String,
      shipmentId: json['shipmentId'] as String,
    );

Map<String, dynamic> _$$InternalOrderEditDtoImplToJson(
    _$InternalOrderEditDtoImpl instance) {
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
  val['shipmentId'] = instance.shipmentId;
  return val;
}
