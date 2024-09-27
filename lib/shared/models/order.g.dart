// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      priority: (json['priority'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      rootOrderId: json['rootOrderId'] as String?,
      creatorId: json['creatorId'] as String,
      guestId: json['guestId'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': _$OrderTypeEnumMap[instance.type]!,
      'priority': instance.priority,
      'rating': instance.rating,
      'note': instance.note,
      'otherInfo': instance.otherInfo,
      'rootOrderId': instance.rootOrderId,
      'creatorId': instance.creatorId,
      'guestId': instance.guestId,
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

_$OrderEditDtoImpl _$$OrderEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderEditDtoImpl(
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      priority: (json['priority'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
      rootOrderId: json['rootOrderId'] as String?,
      creatorId: json['creatorId'] as String,
      guestId: json['guestId'] as String?,
      statusCodeId: json['statusCodeId'] as String,
      addressId: json['addressId'] as String,
    );

Map<String, dynamic> _$$OrderEditDtoImplToJson(_$OrderEditDtoImpl instance) {
  final val = <String, dynamic>{
    'type': _$OrderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('priority', instance.priority);
  writeNotNull('rating', instance.rating);
  writeNotNull('note', instance.note);
  writeNotNull('otherInfo', instance.otherInfo);
  writeNotNull('rootOrderId', instance.rootOrderId);
  val['creatorId'] = instance.creatorId;
  writeNotNull('guestId', instance.guestId);
  val['statusCodeId'] = instance.statusCodeId;
  val['addressId'] = instance.addressId;
  return val;
}
