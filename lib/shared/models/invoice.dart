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
    @JsonKey(name: "totalAmount") required int totalAmount,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "paymentMethod") required String paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
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
    @JsonKey(name: "totalAmount") required int totalAmount,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "paymentMethod") required String paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
  }) = _InvoiceEditDTO;

  factory InvoiceEditDTO.fromJson(Map<String, Object?> json) =>
      _$InvoiceEditDTOFromJson(json);
}
