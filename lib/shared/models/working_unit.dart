import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/working_unit_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'working_unit.freezed.dart';
part 'working_unit.g.dart';

@freezed
class WorkingUnit extends AbstractResourceModel with _$WorkingUnit {
  @JsonSerializable(includeIfNull: false)
  const factory WorkingUnit({
    String? id,
    String? name,
    WorkingUnitType? type,
    @JsonKey(includeIfNull: true) String? imageUri,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    @JsonKey(includeIfNull: true) Address? address,
  }) = _WorkingUnit;

  factory WorkingUnit.fromJson(Map<String, Object?> json) =>
      _$WorkingUnitFromJson(json);
}
