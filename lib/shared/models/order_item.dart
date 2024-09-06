import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItemDTO with _$OrderItemDTO {
  const factory OrderItemDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "ordered_qty") int? orderedQty,
    @JsonKey(name: "received_qty") int? receivedQty,
    @JsonKey(name: "unit_price") required int unitPrice,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "product_category_id") required String productCategoryId,
  }) = _OrderItemDTO;

  factory OrderItemDTO.fromJson(Map<String, Object?> json) =>
      _$OrderItemDTOFromJson(json);

  factory OrderItemDTO.fromRecord(RecordModel obj) =>
      OrderItemDTO.fromJson(obj.toJson());
}

@unfreezed
class OrderItemEditDTO with _$OrderItemEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory OrderItemEditDTO({
    @JsonKey(name: "ordered_qty") int? orderedQty,
    @JsonKey(name: "received_qty") int? receivedQty,
    @JsonKey(name: "unit_price") int? unitPrice,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "product_category_id") String? productCategoryId,
  }) = _OrderItemEditDTO;

  factory OrderItemEditDTO.fromJson(Map<String, Object?> json) =>
      _$OrderItemEditDTOFromJson(json);
}
