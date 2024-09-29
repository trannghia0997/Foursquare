import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'guest_info.freezed.dart';
part 'guest_info.g.dart';

@freezed
class GuestInfoDto with _$GuestInfoDto {
  const factory GuestInfoDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "addressId") required String addressId,
  }) = _GuestInfoDto;

  factory GuestInfoDto.fromJson(Map<String, Object?> json) =>
      _$GuestInfoDtoFromJson(json);

  factory GuestInfoDto.fromRecord(RecordModel obj) =>
      GuestInfoDto.fromJson(obj.toJson());
}

@unfreezed
class GuestInfoEditDto with _$GuestInfoEditDto {
  @JsonSerializable(includeIfNull: false)
  factory GuestInfoEditDto({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "addressId") required String addressId,
  }) = _GuestInfoEditDto;

  factory GuestInfoEditDto.fromJson(Map<String, Object?> json) =>
      _$GuestInfoEditDtoFromJson(json);
}
