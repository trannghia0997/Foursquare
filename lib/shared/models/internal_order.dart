import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'internal_order.freezed.dart';
part 'internal_order.g.dart';

@freezed
class InternalOrderDto with _$InternalOrderDto {
  const factory InternalOrderDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootOrderId") required String rootOrderId,
    @JsonKey(name: "shipmentId") String? shipmentId,
  }) = _InternalOrderDto;

  factory InternalOrderDto.fromJson(Map<String, Object?> json) =>
      _$InternalOrderDtoFromJson(json);

  factory InternalOrderDto.fromRecord(RecordModel obj) =>
      InternalOrderDto.fromJson(obj.toJson());
}

@unfreezed
class InternalOrderEditDto with _$InternalOrderEditDto {
  @JsonSerializable(includeIfNull: false)
  factory InternalOrderEditDto({
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "rootOrderId") required String rootOrderId,
    @JsonKey(name: "shipmentId") String? shipmentId,
  }) = _InternalOrderEditDto;

  factory InternalOrderEditDto.fromJson(Map<String, Object?> json) =>
      _$InternalOrderEditDtoFromJson(json);
}
