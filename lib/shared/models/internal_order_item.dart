import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'internal_order_item.freezed.dart';
part 'internal_order_item.g.dart';

@freezed
class InternalOrderItemDto with _$InternalOrderItemDto {
  const factory InternalOrderItemDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _InternalOrderItemDto;

  factory InternalOrderItemDto.fromJson(Map<String, Object?> json) =>
      _$InternalOrderItemDtoFromJson(json);

  factory InternalOrderItemDto.fromRecord(RecordModel obj) =>
      InternalOrderItemDto.fromJson(obj.toJson());
}

@unfreezed
class InternalOrderItemEditDto with _$InternalOrderItemEditDto {
  @JsonSerializable(includeIfNull: false)
  factory InternalOrderItemEditDto({
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "internalOrderId") required String internalOrderId,
    @JsonKey(name: "orderItemId") required String orderItemId,
  }) = _InternalOrderItemEditDto;

  factory InternalOrderItemEditDto.fromJson(Map<String, Object?> json) =>
      _$InternalOrderItemEditDtoFromJson(json);
}
