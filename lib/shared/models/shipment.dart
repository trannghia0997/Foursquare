import 'package:foursquare/shared/models/enums/shipment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class ShipmentDto with _$ShipmentDto {
  const factory ShipmentDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required ShipmentType type,
    @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
    @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "invoiceId") required String invoiceId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
  }) = _ShipmentDto;

  factory ShipmentDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentDtoFromJson(json);

  factory ShipmentDto.fromRecord(RecordModel obj) =>
      ShipmentDto.fromJson(obj.toJson());
}

@unfreezed
class ShipmentEditDto with _$ShipmentEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ShipmentEditDto({
    @JsonKey(name: "type") required ShipmentType type,
    @JsonKey(name: "shipmentDate") DateTime? shipmentDate,
    @JsonKey(name: "deliveryDate") DateTime? deliveryDate,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "invoiceId") required String invoiceId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
  }) = _ShipmentEditDto;

  factory ShipmentEditDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentEditDtoFromJson(json);
}
