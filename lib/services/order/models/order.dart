import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

enum OrderType {
  @JsonValue('sale')
  sale,
  @JsonValue('return')
  return_,
  @JsonValue('exchange')
  exchange,
  @JsonValue('other')
  transfer,
  @JsonValue('other')
  other
}

@freezed
class Invoice with _$Invoice implements BaseModel {
  const factory Invoice({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    required OrderType type,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _Invoice;

  factory Invoice.fromRecord(RecordModel record) =>
      Invoice.fromJson(record.toJson());

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
