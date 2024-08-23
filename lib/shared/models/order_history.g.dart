// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryImpl _$$OrderHistoryImplFromJson(Map<String, dynamic> json) =>
    _$OrderHistoryImpl(
      id: json['id'] as String?,
      comments: json['comments'] == null
          ? null
          : JsonNullableType<String>.fromJson(json['comments']),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] as String?,
      status: json['status'] == null
          ? null
          : OrderStatus.fromJson(json['status'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderHistoryImplToJson(_$OrderHistoryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('comments', instance.comments);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull('lastModifiedDate', instance.lastModifiedDate);
  writeNotNull('status', instance.status);
  writeNotNull('order', instance.order);
  return val;
}
