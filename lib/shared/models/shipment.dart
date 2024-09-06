import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class ShipmentDTO with _$ShipmentDTO {
  const factory ShipmentDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "shipment_date") DateTime? shipmentDate,
    @JsonKey(name: "delivery_date") DateTime? deliveryDate,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "invoice_id") required String invoiceId,
    @JsonKey(name: "status_code_id") required String statusCodeId,
  }) = _ShipmentDTO;

  factory ShipmentDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentDTOFromJson(json);

  factory ShipmentDTO.fromRecord(RecordModel obj) =>
      ShipmentDTO.fromJson(obj.toJson());
}

@unfreezed
class ShipmentEditDTO with _$ShipmentEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentEditDTO({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "shipment_date") DateTime? shipmentDate,
    @JsonKey(name: "delivery_date") DateTime? deliveryDate,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "invoice_id") String? invoiceId,
    @JsonKey(name: "status_code_id") String? statusCodeId,
  }) = _ShipmentEditDTO;

  factory ShipmentEditDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentEditDTOFromJson(json);
}
