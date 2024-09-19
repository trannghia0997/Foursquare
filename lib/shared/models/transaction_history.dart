import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'transaction_history.freezed.dart';
part 'transaction_history.g.dart';

@freezed
class TransactionHistoryDto with _$TransactionHistoryDto {
  const factory TransactionHistoryDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "entityType") required String entityType,
    @JsonKey(name: "entityId") required String entityId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "note") String? note,
  }) = _TransactionHistoryDto;

  factory TransactionHistoryDto.fromJson(Map<String, Object?> json) =>
      _$TransactionHistoryDtoFromJson(json);

  factory TransactionHistoryDto.fromRecord(RecordModel obj) =>
      TransactionHistoryDto.fromJson(obj.toJson());
}
