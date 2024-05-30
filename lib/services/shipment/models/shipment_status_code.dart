import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'shipment_status_code.freezed.dart';
part 'shipment_status_code.g.dart';

@freezed
class ShipmentStatusCode with _$ShipmentStatusCode implements BaseModel {
  const factory ShipmentStatusCode({
    required String description,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _ShipmentStatusCode;

  factory ShipmentStatusCode.fromRecord(RecordModel record) =>
      ShipmentStatusCode.fromJson(record.toJson()).copyWith(record: record);

  factory ShipmentStatusCode.fromJson(Map<String, Object?> json) =>
      _$ShipmentStatusCodeFromJson(json);
}
