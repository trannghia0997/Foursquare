import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'invoice_status_code.freezed.dart';
part 'invoice_status_code.g.dart';

@freezed
class InvoiceStatusCodeDTO with _$InvoiceStatusCodeDTO {
  const factory InvoiceStatusCodeDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status_code") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _InvoiceStatusCodeDTO;

  factory InvoiceStatusCodeDTO.fromJson(Map<String, Object?> json) =>
      _$InvoiceStatusCodeDTOFromJson(json);

  factory InvoiceStatusCodeDTO.fromRecord(RecordModel obj) =>
      InvoiceStatusCodeDTO.fromJson(obj.toJson());
}
