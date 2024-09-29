import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const factory OrderDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "rootOrderId") String? rootOrderId,
    @JsonKey(name: "creatorId") required String creatorId,
    @JsonKey(name: "guestId") String? guestId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, Object?> json) =>
      _$OrderDtoFromJson(json);

  factory OrderDto.fromRecord(RecordModel obj) =>
      OrderDto.fromJson(obj.toJson());
}

@unfreezed
class OrderEditDto with _$OrderEditDto {
  @JsonSerializable(includeIfNull: false)
  factory OrderEditDto({
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "rootOrderId") String? rootOrderId,
    @JsonKey(name: "creatorId") required String creatorId,
    @JsonKey(name: "guestId") String? guestId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _OrderEditDto;

  factory OrderEditDto.fromJson(Map<String, Object?> json) =>
      _$OrderEditDtoFromJson(json);
}
