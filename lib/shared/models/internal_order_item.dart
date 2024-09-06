import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'internal_order_item.freezed.dart';
part 'internal_order_item.g.dart';

@freezed
class InternalOrderItemDTO with _$InternalOrderItemDTO {
  const factory InternalOrderItemDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _InternalOrderItemDTO;

  factory InternalOrderItemDTO.fromJson(Map<String, Object?> json) =>
      _$InternalOrderItemDTOFromJson(json);

  factory InternalOrderItemDTO.fromRecord(RecordModel obj) =>
      InternalOrderItemDTO.fromJson(obj.toJson());
}

@unfreezed
class InternalOrderItemEditDTO with _$InternalOrderItemEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory InternalOrderItemEditDTO({
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _InternalOrderItemEditDTO;

  factory InternalOrderItemEditDTO.fromJson(Map<String, Object?> json) =>
      _$InternalOrderItemEditDTOFromJson(json);
}
