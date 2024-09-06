import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_status_code.freezed.dart';
part 'shipment_status_code.g.dart';

@freezed
class ShipmentStatusCodeDTO with _$ShipmentStatusCodeDTO {
  const factory ShipmentStatusCodeDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "status_code") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _ShipmentStatusCodeDTO;

  factory ShipmentStatusCodeDTO.fromJson(Map<String, Object?> json) =>
      _$ShipmentStatusCodeDTOFromJson(json);

  factory ShipmentStatusCodeDTO.fromRecord(RecordModel obj) =>
      ShipmentStatusCodeDTO.fromJson(obj.toJson());
}
