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
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "other_info") String? otherInfo,
    @JsonKey(name: "root_order_id") String? rootOrderId,
    @JsonKey(name: "customer_id") required String customerId,
    @JsonKey(name: "status_code_id") required String statusCodeId,
    @JsonKey(name: "address_id") required String addressId,
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
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "other_info") String? otherInfo,
    @JsonKey(name: "root_order_id") String? rootOrderId,
    @JsonKey(name: "customer_id") String? customerId,
    @JsonKey(name: "status_code_id") String? statusCodeId,
    @JsonKey(name: "address_id") String? addressId,
  }) = _OrderEditDTO;

  factory OrderEditDTO.fromJson(Map<String, Object?> json) =>
      _$OrderEditDTOFromJson(json);
}
