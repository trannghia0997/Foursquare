// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyIncomeDtoImpl _$$DailyIncomeDtoImplFromJson(Map<String, dynamic> json) =>
    _$DailyIncomeDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      amountOfChange: (json['amountOfChange'] as num).toInt(),
    );

Map<String, dynamic> _$$DailyIncomeDtoImplToJson(
        _$DailyIncomeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'amountOfChange': instance.amountOfChange,
    };
