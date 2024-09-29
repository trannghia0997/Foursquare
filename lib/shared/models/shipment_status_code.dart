import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'shipment_status_code.freezed.dart';
part 'shipment_status_code.g.dart';

@freezed
class ShipmentStatusCodeDto with _$ShipmentStatusCodeDto {
  const factory ShipmentStatusCodeDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "description") String? description,
  }) = _ShipmentStatusCodeDto;

  factory ShipmentStatusCodeDto.fromJson(Map<String, Object?> json) =>
      _$ShipmentStatusCodeDtoFromJson(json);

  factory ShipmentStatusCodeDto.fromRecord(RecordModel obj) =>
      ShipmentStatusCodeDto.fromJson(obj.toJson());
}
