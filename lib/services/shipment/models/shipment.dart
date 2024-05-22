import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class Shipment with _$Shipment implements BaseModel {
  const factory Shipment({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _Shipment;

  factory Shipment.fromRecord(RecordModel record) =>
      Shipment.fromJson(record.toJson());

  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);
}
