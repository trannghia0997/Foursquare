import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem implements BaseModel {
  const factory OrderItem({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'qty') @Default(0) double quantity,
    @JsonKey(name: 'price_per_unit') @Default(0) double pricePerUnit,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _OrderItem;

  factory OrderItem.fromRecord(RecordModel record) =>
      OrderItem.fromJson(record.toJson());

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}
