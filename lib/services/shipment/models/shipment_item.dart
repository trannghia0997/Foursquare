import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItem with _$ShipmentItem implements BaseModel {
  const factory ShipmentItem({
    @JsonKey(name: 'shipment_id') required String shipmentId,
    @JsonKey(name: 'order_item_id') required String orderItemId,
    @JsonKey(name: 'qty') @Default(0) double quantity,
    @Default(0) double total,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _ShipmentItem;

  factory ShipmentItem.fromRecord(RecordModel record) =>
      ShipmentItem.fromJson(record.toJson()).copyWith(record: record);

  factory ShipmentItem.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemFromJson(json);
}
