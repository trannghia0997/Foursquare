import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order_status_code.freezed.dart';
part 'order_status_code.g.dart';

@freezed
class OrderStatusCodeDTO with _$OrderStatusCodeDTO {
  const factory OrderStatusCodeDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status_code") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _OrderStatusCodeDTO;

  factory OrderStatusCodeDTO.fromJson(Map<String, Object?> json) =>
      _$OrderStatusCodeDTOFromJson(json);

  factory OrderStatusCodeDTO.fromRecord(RecordModel obj) =>
      OrderStatusCodeDTO.fromJson(obj.toJson());
}
