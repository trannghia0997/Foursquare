import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "verified") bool? verified,
    @JsonKey(name: "emailVisibility") bool? emailVisibility,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatarUrl") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required UserRole role,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromRecord(RecordModel obj) => UserDto.fromJson(obj.toJson());
}

@unfreezed
class UserCreationDto with _$UserCreationDto {
  @JsonSerializable(includeIfNull: false)
  factory UserCreationDto({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "emailVisibility") bool? emailVisibility,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "passwordConfirm") required String passwordConfirm,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatarUrl") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required UserRole role,
  }) = _UserCreationDto;

  factory UserCreationDto.fromJson(Map<String, Object?> json) =>
      _$UserCreationDtoFromJson(json);
}

@unfreezed
class UserUpdateDto with _$UserUpdateDto {
  @JsonSerializable(includeIfNull: false)
  factory UserUpdateDto({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "emailVisibility") bool? emailVisibility,
    @JsonKey(name: "oldPassword") String? oldPassword,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "passwordConfirm") required String passwordConfirm,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatarUrl") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required UserRole role,
  }) = _UserUpdateDto;

  factory UserUpdateDto.fromJson(Map<String, Object?> json) =>
      _$UserUpdateDtoFromJson(json);
}
