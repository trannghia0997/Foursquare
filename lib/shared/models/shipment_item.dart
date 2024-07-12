import 'package:decimal/decimal.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItem with _$ShipmentItem {
  @JsonSerializable(includeIfNull: false)
  const factory ShipmentItem({
    String? id,
    int? qty,
    Decimal? total,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    OrderItem? orderItem,
    Shipment? shipment,
  }) = _ShipmentItem;

  factory ShipmentItem.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemFromJson(json);
}
