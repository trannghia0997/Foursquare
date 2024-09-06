import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItemDTO with _$ShipmentItemDTO {
  const factory ShipmentItemDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "qty") required int qty,
    @JsonKey(name: "rollQty") required int rollQty,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _ShipmentItemDTO;

  factory ShipmentItemDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemDTOFromJson(json);

  factory ShipmentItemDTO.fromRecord(RecordModel obj) =>
      ShipmentItemDTO.fromJson(obj.toJson());
}

@unfreezed
class ShipmentItemEditDTO with _$ShipmentItemEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentItemEditDTO({
    @JsonKey(name: "qty") required int qty,
    @JsonKey(name: "rollQty") required int rollQty,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _ShipmentItemEditDTO;

  factory ShipmentItemEditDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemEditDTOFromJson(json);
}
