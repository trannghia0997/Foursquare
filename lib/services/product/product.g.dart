// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      description: json['description'] as String?,
      provider: json['provider'] as String?,
      price: (json['price'] as num).toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      colours: (json['colours'] as List<dynamic>)
          .map((e) => Colour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
      'provider': instance.provider,
      'price': instance.price,
      'qty': instance.qty,
      'imageUrls': instance.imageUrls,
      'colours': instance.colours,
    };
