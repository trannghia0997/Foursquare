import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class InvoiceDTO with _$InvoiceDTO {
  const factory InvoiceDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "total_amount") required int totalAmount,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "payment_method") required String paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "status_code_id") required String statusCodeId,
    @JsonKey(name: "root_invoice_id") String? rootInvoiceId,
  }) = _InvoiceDTO;

  factory InvoiceDTO.fromJson(Map<String, Object?> json) =>
      _$InvoiceDTOFromJson(json);

  factory InvoiceDTO.fromRecord(RecordModel obj) =>
      InvoiceDTO.fromJson(obj.toJson());
}

@unfreezed
class InvoiceEditDTO with _$InvoiceEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory InvoiceEditDTO({
    @JsonKey(name: "total_amount") int? totalAmount,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "status_code_id") String? statusCodeId,
    @JsonKey(name: "root_invoice_id") String? rootInvoiceId,
  }) = _InvoiceEditDTO;

  factory InvoiceEditDTO.fromJson(Map<String, Object?> json) =>
      _$InvoiceEditDTOFromJson(json);
}
