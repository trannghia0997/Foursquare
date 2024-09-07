import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order_history.freezed.dart';
part 'order_history.g.dart';

@freezed
class OrderHistoryDto with _$OrderHistoryDto {
  const factory OrderHistoryDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
  }) = _OrderHistoryDto;

  factory OrderHistoryDto.fromJson(Map<String, Object?> json) =>
      _$OrderHistoryDtoFromJson(json);

  factory OrderHistoryDto.fromRecord(RecordModel obj) =>
      OrderHistoryDto.fromJson(obj.toJson());
}
