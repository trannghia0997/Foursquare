// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_quantity_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantitySummaryViewImpl _$$ProductQuantitySummaryViewImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantitySummaryViewImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      totalQty: (json['totalQty'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductQuantitySummaryViewImplToJson(
        _$ProductQuantitySummaryViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'totalQty': instance.totalQty,
    };
