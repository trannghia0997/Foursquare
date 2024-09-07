import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order_status_code.freezed.dart';
part 'order_status_code.g.dart';

@freezed
class OrderStatusCodeDto with _$OrderStatusCodeDto {
  const factory OrderStatusCodeDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _OrderStatusCodeDto;

  factory OrderStatusCodeDto.fromJson(Map<String, Object?> json) =>
      _$OrderStatusCodeDtoFromJson(json);

  factory OrderStatusCodeDto.fromRecord(RecordModel obj) =>
      OrderStatusCodeDto.fromJson(obj.toJson());
}
