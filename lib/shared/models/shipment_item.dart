import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_item.freezed.dart';
part 'shipment_item.g.dart';

@freezed
class ShipmentItemDto with _$ShipmentItemDto {
  const factory ShipmentItemDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "qty") required int qty,
    @JsonKey(name: "rollQty") int? rollQty,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _ShipmentItemDto;

  factory ShipmentItemDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemDtoFromJson(json);

  factory ShipmentItemDto.fromRecord(RecordModel obj) =>
      ShipmentItemDto.fromJson(obj.toJson());
}

@unfreezed
class ShipmentItemEditDto with _$ShipmentItemEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentItemEditDto({
    @JsonKey(name: "qty") required int qty,
    @JsonKey(name: "rollQty") int? rollQty,
    @JsonKey(name: "shipmentId") required String shipmentId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _ShipmentItemEditDto;

  factory ShipmentItemEditDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentItemEditDtoFromJson(json);
}
