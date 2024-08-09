// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']),
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['isInternal'] as bool? ?? false,
      note: json['note'] == null
          ? null
          : JsonNullableType<String>.fromJson(json['note']),
      otherInfo: json['otherInfo'] == null
          ? null
          : JsonNullableType<String>.fromJson(json['otherInfo']),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      customer: json['customer'] == null
          ? null
          : User.fromJson(json['customer'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : OrderStatus.fromJson(json['status'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : JsonNullableType<Address>.fromJson(json['address']),
      parentOrder: json['parentOrder'] == null
          ? null
          : JsonNullableType<Order>.fromJson(json['parentOrder']),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$OrderTypeEnumMap[instance.type]);
  writeNotNull('priority', instance.priority);
  writeNotNull('isInternal', instance.isInternal);
  writeNotNull('note', instance.note);
  writeNotNull('otherInfo', instance.otherInfo);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('customer', instance.customer);
  writeNotNull('status', instance.status);
  writeNotNull('address', instance.address);
  writeNotNull('parentOrder', instance.parentOrder);
  return val;
}

const _$OrderTypeEnumMap = {
  OrderType.sale: 'SALE',
  OrderType.return_: 'RETURN',
  OrderType.exchange: 'EXCHANGE',
  OrderType.transfer: 'TRANSFER',
  OrderType.other: 'OTHER',
};
