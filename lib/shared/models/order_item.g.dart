// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String?,
      orderedQty: (json['orderedQty'] as num?)?.toInt(),
      receivedQty: (json['receivedQty'] as num?)?.toInt(),
      unitPrice: json['unitPrice'] == null
          ? null
          : Decimal.fromJson(json['unitPrice'] as String),
      note: json['note'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      productCategory: json['productCategory'] == null
          ? null
          : ProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('orderedQty', instance.orderedQty);
  writeNotNull('receivedQty', instance.receivedQty);
  writeNotNull('unitPrice', instance.unitPrice);
  val['note'] = instance.note;
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('productCategory', instance.productCategory);
  writeNotNull('order', instance.order);
  return val;
}
