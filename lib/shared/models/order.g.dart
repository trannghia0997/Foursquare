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
      note: json['note'] as String?,
      otherInfo: json['otherInfo'] as String?,
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
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      parentOrder: json['parentOrder'] == null
          ? null
          : Order.fromJson(json['parentOrder'] as Map<String, dynamic>),
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
  val['priority'] = instance.priority;
  writeNotNull('isInternal', instance.isInternal);
  val['note'] = instance.note;
  val['otherInfo'] = instance.otherInfo;
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('customer', instance.customer);
  writeNotNull('status', instance.status);
  val['address'] = instance.address;
  val['parentOrder'] = instance.parentOrder;
  return val;
}

const _$OrderTypeEnumMap = {
  OrderType.sale: 'SALE',
  OrderType.return_: 'RETURN',
  OrderType.exchange: 'EXCHANGE',
  OrderType.transfer: 'TRANSFER',
  OrderType.other: 'OTHER',
};
