// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDTOImpl _$$OrderDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: json['type'] as String,
      priority: (json['priority'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['other_info'] as String?,
      rootOrderId: json['root_order_id'] as String?,
      customerId: json['customer_id'] as String,
      statusCodeId: json['status_code_id'] as String,
      addressId: json['address_id'] as String,
    );

Map<String, dynamic> _$$OrderDTOImplToJson(_$OrderDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': instance.type,
      'priority': instance.priority,
      'note': instance.note,
      'other_info': instance.otherInfo,
      'root_order_id': instance.rootOrderId,
      'customer_id': instance.customerId,
      'status_code_id': instance.statusCodeId,
      'address_id': instance.addressId,
    };

_$OrderEditDTOImpl _$$OrderEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderEditDTOImpl(
      type: json['type'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      note: json['note'] as String?,
      otherInfo: json['other_info'] as String?,
      rootOrderId: json['root_order_id'] as String?,
      customerId: json['customer_id'] as String?,
      statusCodeId: json['status_code_id'] as String?,
      addressId: json['address_id'] as String?,
    );

Map<String, dynamic> _$$OrderEditDTOImplToJson(_$OrderEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('priority', instance.priority);
  writeNotNull('note', instance.note);
  writeNotNull('other_info', instance.otherInfo);
  writeNotNull('root_order_id', instance.rootOrderId);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('status_code_id', instance.statusCodeId);
  writeNotNull('address_id', instance.addressId);
  return val;
}
