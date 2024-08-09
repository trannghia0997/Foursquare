import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'shipment_assignment.freezed.dart';
part 'shipment_assignment.g.dart';

@freezed
class ShipmentAssignment extends AbstractResourceModel
    with _$ShipmentAssignment {
  @JsonSerializable(includeIfNull: false)
  const factory ShipmentAssignment({
    String? id,
    AssignmentStatus? status,
    @JsonKey(includeIfNull: true) String? note,
    @JsonKey(includeIfNull: true) String? otherInfo,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    @JsonKey(includeIfNull: true) User? user,
    Shipment? shipment,
  }) = _ShipmentAssignment;

  factory ShipmentAssignment.fromJson(Map<String, Object?> json) =>
      _$ShipmentAssignmentFromJson(json);
}
