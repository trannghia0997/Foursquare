import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class Shipment with _$Shipment {
  const factory Shipment({
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);
}
