import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String line1,
    String? line2,
    required String city,
    required String state,
    required String country,
    @JsonKey(name: 'zip_or_postcode') String? zipOrPostcode,
    @JsonKey(name: 'other_address_details') String? otherAddressDetails,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
