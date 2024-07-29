import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/address_type.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
class UserAddress extends AbstractResourceModel with _$UserAddress {
  @JsonSerializable(includeIfNull: false)
  const factory UserAddress({
    String? id,
    AddressType? type,
    @JsonKey(includeIfNull: true) String? friendlyName,
    @JsonKey(defaultValue: false) bool? isDefault,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    Address? address,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, Object?> json) =>
      _$UserAddressFromJson(json);
}
