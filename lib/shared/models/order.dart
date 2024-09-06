import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class OrderDTO with _$OrderDTO {
  const factory OrderDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "rootOrderId") String? rootOrderId,
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _OrderDTO;

  factory OrderDTO.fromJson(Map<String, Object?> json) =>
      _$OrderDTOFromJson(json);

  factory OrderDTO.fromRecord(RecordModel obj) =>
      OrderDTO.fromJson(obj.toJson());
}

@unfreezed
class OrderEditDTO with _$OrderEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory OrderEditDTO({
    @JsonKey(name: "type") required OrderType type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "otherInfo") String? otherInfo,
    @JsonKey(name: "rootOrderId") String? rootOrderId,
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "statusCodeId") required String statusCodeId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _OrderEditDTO;

  factory OrderEditDTO.fromJson(Map<String, Object?> json) =>
      _$OrderEditDTOFromJson(json);
}
