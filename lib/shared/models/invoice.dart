import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/invoice_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice extends AbstractResourceModel with _$Invoice {
  @JsonSerializable(includeIfNull: false)
  const factory Invoice({
    String? id,
    double? totalAmount,
    InvoiceType? type,
    PaymentMethod? paymentMethod,
    JsonNullableType<String>? note,
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
