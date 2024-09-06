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
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "friendly_name") String? friendlyName,
    @JsonKey(name: "is_default") bool? isDefault,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "address_id") required String addressId,
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
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "friendly_name") String? friendlyName,
    @JsonKey(name: "is_default") bool? isDefault,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "address_id") String? addressId,
  }) = _UserAddressEditDTO;

  factory UserAddressEditDTO.fromJson(Map<String, Object?> json) =>
      _$UserAddressEditDTOFromJson(json);
}
