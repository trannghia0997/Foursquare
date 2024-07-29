import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/enums/shipment_type.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/shipment_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment.freezed.dart';
part 'shipment.g.dart';

@freezed
class Shipment extends AbstractResourceModel with _$Shipment {
  @JsonSerializable(includeIfNull: false)
  const factory Shipment({
    String? id,
    ShipmentType? type,
    DateTime? shipmentDate,
    @JsonKey(includeIfNull: true) String? note,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    ShipmentStatus? status,
    Order? order,
    Invoice? invoice,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);
}
