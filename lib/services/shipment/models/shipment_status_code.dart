import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment_status_code.freezed.dart';
part 'shipment_status_code.g.dart';

@freezed
class ShipmentStatusCode with _$ShipmentStatusCode {
  const factory ShipmentStatusCode({
    required String description,
  }) = _ShipmentStatusCode;

  factory ShipmentStatusCode.fromJson(Map<String, Object?> json) =>
      _$ShipmentStatusCodeFromJson(json);
}
