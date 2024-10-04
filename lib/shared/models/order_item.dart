import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItemDto with _$OrderItemDto {
  const factory OrderItemDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "orderedQty") required int orderedQty,
    @JsonKey(name: "receivedQty") int? receivedQty,
    @JsonKey(name: "shippedQty") int? shippedQty,
    @JsonKey(name: "assignedQty") int? assignedQty,
    @JsonKey(name: "unitPrice") required double unitPrice,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "productCategoryId") required String productCategoryId,
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, Object?> json) =>
      _$OrderItemDtoFromJson(json);

  factory OrderItemDto.fromRecord(RecordModel obj) =>
      OrderItemDto.fromJson(obj.toJson());
}

@unfreezed
class OrderItemEditDto with _$OrderItemEditDto {
  @JsonSerializable(includeIfNull: false)
  factory OrderItemEditDto({
    @JsonKey(name: "orderedQty") required int orderedQty,
    @JsonKey(name: "receivedQty") int? receivedQty,
    @JsonKey(name: "shippedQty") int? shippedQty,
    @JsonKey(name: "assignedQty") int? assignedQty,
    @JsonKey(name: "unitPrice") required double unitPrice,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "productCategoryId") required String productCategoryId,
  }) = _OrderItemEditDto;

  factory OrderItemEditDto.fromJson(Map<String, Object?> json) =>
      _$OrderItemEditDtoFromJson(json);
}
