import 'package:foursquare/shared/models/enums/address_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
class UserAddressDTO with _$UserAddressDTO {
  const factory UserAddressDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required AddressType type,
    @JsonKey(name: "friendlyName") String? friendlyName,
    @JsonKey(name: "isDefault") bool? isDefault,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _UserAddressDTO;

  factory UserAddressDTO.fromJson(Map<String, Object?> json) =>
      _$UserAddressDTOFromJson(json);

  factory UserAddressDTO.fromRecord(RecordModel obj) =>
      UserAddressDTO.fromJson(obj.toJson());
}

@unfreezed
class UserAddressEditDTO with _$UserAddressEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory UserAddressEditDTO({
    @JsonKey(name: "type") required AddressType type,
    @JsonKey(name: "friendlyName") String? friendlyName,
    @JsonKey(name: "isDefault") bool? isDefault,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _UserAddressEditDTO;

  factory UserAddressEditDTO.fromJson(Map<String, Object?> json) =>
      _$UserAddressEditDTOFromJson(json);
}
