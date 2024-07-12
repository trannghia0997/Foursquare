import 'package:foursquare/shared/models/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'working_unit.freezed.dart';
part 'working_unit.g.dart';

@freezed
class WorkingUnit with _$WorkingUnit {
  @JsonSerializable(includeIfNull: false)
  const factory WorkingUnit({
    String? id,
    String? name,
    WorkingUnit? type,
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
