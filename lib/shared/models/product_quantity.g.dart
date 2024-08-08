// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityImpl _$$ProductQuantityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityImpl(
      id: json['id'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      workingUnit: json['workingUnit'] == null
          ? null
          : WorkingUnit.fromJson(json['workingUnit'] as Map<String, dynamic>),
      productCategory: json['productCategory'] == null
          ? null
          : ProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductQuantityImplToJson(
    _$ProductQuantityImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('qty', instance.qty);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('workingUnit', instance.workingUnit);
  writeNotNull('productCategory', instance.productCategory);
  return val;
}
