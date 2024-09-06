// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityDTOImpl _$$ProductQuantityDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      qty: (json['qty'] as num?)?.toInt(),
      categoryId: json['category_id'] as String,
      workingUnitId: json['working_unit_id'] as String,
    );

Map<String, dynamic> _$$ProductQuantityDTOImplToJson(
        _$ProductQuantityDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'qty': instance.qty,
      'category_id': instance.categoryId,
      'working_unit_id': instance.workingUnitId,
    };

_$ProductQuantityEditDTOImpl _$$ProductQuantityEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityEditDTOImpl(
      qty: (json['qty'] as num?)?.toInt(),
      categoryId: json['category_id'] as String?,
      workingUnitId: json['working_unit_id'] as String?,
    );

Map<String, dynamic> _$$ProductQuantityEditDTOImplToJson(
    _$ProductQuantityEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('working_unit_id', instance.workingUnitId);
  return val;
}
