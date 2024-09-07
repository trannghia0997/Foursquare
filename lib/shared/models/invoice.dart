import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class InvoiceDto with _$InvoiceDto {
  const factory InvoiceDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "totalAmount") required int totalAmount,
    @JsonKey(name: "type") required InvoiceType type,
    @JsonKey(name: "paymentMethod") required PaymentMethod paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
  }) = _InvoiceDto;

  factory InvoiceDto.fromJson(Map<String, Object?> json) =>
      _$InvoiceDtoFromJson(json);

  factory InvoiceDto.fromRecord(RecordModel obj) =>
      InvoiceDto.fromJson(obj.toJson());
}

@unfreezed
class InvoiceEditDto with _$InvoiceEditDto {
  @JsonSerializable(includeIfNull: false)
  factory InvoiceEditDto({
    @JsonKey(name: "totalAmount") required int totalAmount,
    @JsonKey(name: "type") required InvoiceType type,
    @JsonKey(name: "paymentMethod") required PaymentMethod paymentMethod,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "orderId") required String orderId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootInvoiceId") String? rootInvoiceId,
  }) = _InvoiceEditDto;

  factory InvoiceEditDto.fromJson(Map<String, Object?> json) =>
      _$InvoiceEditDtoFromJson(json);
}
