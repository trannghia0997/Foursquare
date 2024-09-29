import 'package:foursquare/shared/models/enums/address_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
class UserAddressDto with _$UserAddressDto {
  const factory UserAddressDto({
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
  }) = _UserAddressDto;

  factory UserAddressDto.fromJson(Map<String, Object?> json) =>
      _$UserAddressDtoFromJson(json);

  factory UserAddressDto.fromRecord(RecordModel obj) =>
      UserAddressDto.fromJson(obj.toJson());
}

@unfreezed
class UserAddressEditDto with _$UserAddressEditDto {
  @JsonSerializable(includeIfNull: false)
  factory UserAddressEditDto({
    @JsonKey(name: "type") required AddressType type,
    @JsonKey(name: "friendlyName") String? friendlyName,
    @JsonKey(name: "isDefault") bool? isDefault,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "addressId") required String addressId,
  }) = _UserAddressEditDto;

  factory UserAddressEditDto.fromJson(Map<String, Object?> json) =>
      _$UserAddressEditDtoFromJson(json);
}
