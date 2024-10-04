// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_quantity_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityHistoryDtoImpl _$$ProductQuantityHistoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityHistoryDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      categoryId: json['categoryId'] as String,
      amountOfChange: (json['amountOfChange'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductQuantityHistoryDtoImplToJson(
        _$ProductQuantityHistoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'categoryId': instance.categoryId,
      'amountOfChange': instance.amountOfChange,
    };
