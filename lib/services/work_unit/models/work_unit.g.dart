// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      addressId: json['address_id'] as String?,
      total: (json['total'] as num).toDouble(),
      statusId: json['status_id'] as String,
      type: $enumDecode(_$WorkUnitTypeEnumMap, json['type']),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'address_id': instance.addressId,
      'total': instance.total,
      'status_id': instance.statusId,
      'type': _$WorkUnitTypeEnumMap[instance.type]!,
      'image': instance.image,
    };

const _$WorkUnitTypeEnumMap = {
  WorkUnitType.warehouse: 'warehouse',
  WorkUnitType.office: 'office',
  WorkUnitType.delivery: 'delivery',
};
