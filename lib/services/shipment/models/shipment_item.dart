import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItem with _$ShipmentItem implements BaseModel {
  const factory ShipmentItem({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'shipment_id') required String shipmentId,
    @JsonKey(name: 'order_item_id') required String orderItemId,
    @JsonKey(name: 'qty') @Default(0) double quantity,
    @Default(0) double total,
  }) = _ShipmentItem;

  factory ShipmentItem.fromRecord(RecordModel record) =>
      ShipmentItem.fromJson(record.toJson());

  factory ShipmentItem.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemFromJson(json);
}
