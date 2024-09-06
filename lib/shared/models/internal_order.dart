import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'internal_order.freezed.dart';
part 'internal_order.g.dart';

@freezed
class InternalOrderDTO with _$InternalOrderDTO {
  const factory InternalOrderDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "status_code_id") required String statusCodeId,
    @JsonKey(name: "root_order_id") required String rootOrderId,
  }) = _InternalOrderDTO;

  factory InternalOrderDTO.fromJson(Map<String, Object?> json) =>
      _$InternalOrderDTOFromJson(json);

  factory InternalOrderDTO.fromRecord(RecordModel obj) =>
      InternalOrderDTO.fromJson(obj.toJson());
}

@unfreezed
class InternalOrderEditDTO with _$InternalOrderEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory InternalOrderEditDTO({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "status_code_id") String? statusCodeId,
    @JsonKey(name: "root_order_id") String? rootOrderId,
  }) = _InternalOrderEditDTO;

  factory InternalOrderEditDTO.fromJson(Map<String, Object?> json) =>
      _$InternalOrderEditDTOFromJson(json);
}
