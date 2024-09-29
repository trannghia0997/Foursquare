// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityDtoImpl _$$ProductQuantityDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      priority: (json['priority'] as num).toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      categoryId: json['categoryId'] as String,
      workingUnitId: json['workingUnitId'] as String,
    );

Map<String, dynamic> _$$ProductQuantityDtoImplToJson(
        _$ProductQuantityDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'priority': instance.priority,
      'qty': instance.qty,
      'categoryId': instance.categoryId,
      'workingUnitId': instance.workingUnitId,
    };

_$ProductQuantityEditDtoImpl _$$ProductQuantityEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityEditDtoImpl(
      priority: (json['priority'] as num).toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      categoryId: json['categoryId'] as String,
      workingUnitId: json['workingUnitId'] as String,
    );

Map<String, dynamic> _$$ProductQuantityEditDtoImplToJson(
    _$ProductQuantityEditDtoImpl instance) {
  final val = <String, dynamic>{
    'priority': instance.priority,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  val['categoryId'] = instance.categoryId;
  val['workingUnitId'] = instance.workingUnitId;
  return val;
}
