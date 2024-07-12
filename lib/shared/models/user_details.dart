import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  @JsonSerializable(includeIfNull: false)
  const factory UserDetails({
    int? id,
    @JsonKey(includeIfNull: true) String? phone,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    @JsonKey(includeIfNull: true) WorkingUnit? workingUnit,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, Object?> json) =>
      _$UserDetailsFromJson(json);
}
