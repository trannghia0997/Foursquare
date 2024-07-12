import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/invoice_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:decimal/decimal.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  @JsonSerializable(includeIfNull: false)
  const factory Invoice({
    String? id,
    Decimal? totalAmount,
    InvoiceType? type,
    PaymentMethod? paymentMethod,
    @JsonKey(includeIfNull: true) String? note,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    InvoiceStatus? status,
    Order? order,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
