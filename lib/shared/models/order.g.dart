// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDTOImpl _$$OrderDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      priority: (json['priority'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      rootOrderId: json['rootOrderId'] as String?,
      customerId: json['customerId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$OrderDTOImplToJson(_$OrderDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': _$OrderTypeEnumMap[instance.type]!,
      'priority': instance.priority,
      'note': instance.note,
      'otherInfo': instance.otherInfo,
      'rootOrderId': instance.rootOrderId,
      'customerId': instance.customerId,
      'statusCodeId': instance.statusCodeId,
      'addressId': instance.addressId,
    };

const _$OrderTypeEnumMap = {
  OrderType.sale: 'sale',
  OrderType.return_: 'return',
  OrderType.exchange: 'exchange',
  OrderType.transfer: 'transfer',
  OrderType.other: 'other',
};

_$OrderEditDTOImpl _$$OrderEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderEditDTOImpl(
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      priority: (json['priority'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      rootOrderId: json['rootOrderId'] as String?,
      customerId: json['customerId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$OrderEditDTOImplToJson(_$OrderEditDTOImpl instance) {
  final val = <String, dynamic>{
    'type': _$OrderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('priority', instance.priority);
  writeNotNull('note', instance.note);
  writeNotNull('otherInfo', instance.otherInfo);
  writeNotNull('rootOrderId', instance.rootOrderId);
  val['customerId'] = instance.customerId;
  val['statusCodeId'] = instance.statusCodeId;
  val['addressId'] = instance.addressId;
  return val;
}
