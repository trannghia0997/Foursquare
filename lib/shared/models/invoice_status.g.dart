// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceStatusImpl _$$InvoiceStatusImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceStatusImpl(
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

Map<String, dynamic> _$$InvoiceStatusImplToJson(_$InvoiceStatusImpl instance) {
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
