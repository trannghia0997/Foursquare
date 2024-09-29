import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
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
    @JsonKey(name: "zipOrPostcode") String? zipOrPostcode,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, Object?> json) =>
      _$AddressDtoFromJson(json);

  factory AddressDto.fromRecord(RecordModel obj) =>
      AddressDto.fromJson(obj.toJson());
}

@unfreezed
class AddressEditDto with _$AddressEditDto {
  @JsonSerializable(includeIfNull: false)
  factory AddressEditDto({
    @JsonKey(name: "line1") required String line1,
    @JsonKey(name: "line2") String? line2,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "state") required String state,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "zipOrPostcode") String? zipOrPostcode,
  }) = _AddressEditDto;

  factory AddressEditDto.fromJson(Map<String, Object?> json) =>
      _$AddressEditDtoFromJson(json);
}

extension AddressDtoExtension on AddressDto {
  String get fullAddress => line2 == null || line2!.isEmpty
      ? "$line1, $city, $state, $country"
      : "$line1, $line2, $city, $state, $country";
}

extension AddressEditDtoExtension on AddressEditDto {
  String get fullAddress => line2 == null || line2!.isEmpty
      ? "$line1, $city, $state, $country"
      : "$line1, $line2, $city, $state, $country";
}
