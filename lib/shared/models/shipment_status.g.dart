// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentStatusImpl _$$ShipmentStatusImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentStatusImpl(
      id: (json['id'] as num?)?.toInt(),
      statusCode: json['statusCode'] as String?,
      description: json['description'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
    );

Map<String, dynamic> _$$ShipmentStatusImplToJson(
    _$ShipmentStatusImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('statusCode', instance.statusCode);
  val['description'] = instance.description;
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  return val;
}
