import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItem with _$ShipmentItem {
  const factory ShipmentItem({
    @JsonKey(name: 'shipment_id') required String shipmentId,
    @JsonKey(name: 'order_item_id') required String orderItemId,
    @JsonKey(name: 'qty') @Default(0) double quantity,
    @Default(0) double total,
  }) = _ShipmentItem;

  factory ShipmentItem.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemFromJson(json);
}
