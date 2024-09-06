import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class AddressDTO with _$AddressDTO {
  const factory AddressDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "line1") required String line1,
    @JsonKey(name: "line2") String? line2,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "state") required String state,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "zip_or_postcode") String? zipOrPostcode,
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, Object?> json) =>
      _$AddressDTOFromJson(json);

  factory AddressDTO.fromRecord(RecordModel obj) =>
      AddressDTO.fromJson(obj.toJson());
}

@unfreezed
class AddressEditDTO with _$AddressEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory AddressEditDTO({
    @JsonKey(name: "line1") String? line1,
    @JsonKey(name: "line2") String? line2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "zip_or_postcode") String? zipOrPostcode,
  }) = _AddressEditDTO;

  factory AddressEditDTO.fromJson(Map<String, Object?> json) =>
      _$AddressEditDTOFromJson(json);
}
