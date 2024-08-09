import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails extends AbstractResourceModel with _$UserDetails {
  @JsonSerializable(includeIfNull: false)
  const factory UserDetails({
    int? id,
    JsonNullableType<String>? phone,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, Object?> json) =>
      _$UserDetailsFromJson(json);
}
