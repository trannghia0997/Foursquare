import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'invoice_status_code.freezed.dart';
part 'invoice_status_code.g.dart';

@freezed
class InvoiceStatusCodeDto with _$InvoiceStatusCodeDto {
  const factory InvoiceStatusCodeDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _InvoiceStatusCodeDto;

  factory InvoiceStatusCodeDto.fromJson(Map<String, Object?> json) =>
      _$InvoiceStatusCodeDtoFromJson(json);

  factory InvoiceStatusCodeDto.fromRecord(RecordModel obj) =>
      InvoiceStatusCodeDto.fromJson(obj.toJson());
}
