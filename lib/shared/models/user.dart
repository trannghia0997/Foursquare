import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
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
    @JsonKey(name: "avatar_url") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required String role,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, Object?> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromRecord(RecordModel obj) => UserDTO.fromJson(obj.toJson());
}

@unfreezed
class UserCreationDTO with _$UserCreationDTO {
  @JsonSerializable(includeIfNull: false)
  factory UserCreationDTO({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "emailVisibility") bool? emailVisibility,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "passwordConfirm") required String passwordConfirm,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatar_url") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required String role,
  }) = _UserCreationDTO;

  factory UserCreationDTO.fromJson(Map<String, Object?> json) =>
      _$UserCreationDTOFromJson(json);
}

@unfreezed
class UserUpdateDTO with _$UserUpdateDTO {
  @JsonSerializable(includeIfNull: false)
  factory UserUpdateDTO({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "emailVisibility") bool? emailVisibility,
    @JsonKey(name: "oldPassword") String? oldPassword,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "passwordConfirm") required String passwordConfirm,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatar_url") String? avatarUrl,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "role") required String role,
  }) = _UserUpdateDTO;

  factory UserUpdateDTO.fromJson(Map<String, Object?> json) =>
      _$UserUpdateDTOFromJson(json);
}
