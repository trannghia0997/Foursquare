import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'invoice_line_item.freezed.dart';
part 'invoice_line_item.g.dart';

@freezed
class InvoiceLineItemDto with _$InvoiceLineItemDto {
  const factory InvoiceLineItemDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "invoiceId") required String invoiceId,
    @JsonKey(name: "orderItemId") required String orderItemId,
    @JsonKey(name: "unitPrice") required double unitPrice,
    @JsonKey(name: "note") String? note,
  }) = _InvoiceLineItemDto;

  factory InvoiceLineItemDto.fromJson(Map<String, Object?> json) =>
      _$InvoiceLineItemDtoFromJson(json);

  factory InvoiceLineItemDto.fromRecord(RecordModel obj) =>
      InvoiceLineItemDto.fromJson(obj.toJson());
}

@unfreezed
class InvoiceLineItemEditDto with _$InvoiceLineItemEditDto {
  @JsonSerializable(includeIfNull: false)
  factory InvoiceLineItemEditDto({
    @JsonKey(name: "invoiceId") required String invoiceId,
    @JsonKey(name: "orderItemId") required String orderItemId,
    @JsonKey(name: "unitPrice") required double unitPrice,
    @JsonKey(name: "note") String? note,
  }) = _InvoiceLineItemEditDto;

  factory InvoiceLineItemEditDto.fromJson(Map<String, Object?> json) =>
      _$InvoiceLineItemEditDtoFromJson(json);
}
