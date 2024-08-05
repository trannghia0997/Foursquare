import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/enums/staff_status.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'staff_info.freezed.dart';
part 'staff_info.g.dart';

@freezed
class StaffInfo extends AbstractResourceModel with _$StaffInfo {
  @JsonSerializable(includeIfNull: false)
  const factory StaffInfo({
    int? id,
    StaffStatus? status,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    @JsonKey(includeIfNull: true) WorkingUnit? workingUnit,
  }) = _StaffInfo;

  factory StaffInfo.fromJson(Map<String, Object?> json) =>
      _$StaffInfoFromJson(json);
}
