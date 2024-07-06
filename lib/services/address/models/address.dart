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
    required String country,
    required String state,
    @JsonKey(name: 'zip_or_postcode') String? zipOrPostcode,
    @JsonKey(name: 'other_address_details') String? otherAddressDetails,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}

List<Address> listAddresses = [
  const Address(
    line1: 'KTX Bách Khoa',
    city: 'TP Hồ Chí Minh',
    country: 'Việt Nam',
    state: 'active',
  ),
  const Address(
    line1: '123 Main Street',
    line2: 'Apt 4B',
    city: 'New York',
    state: 'NY',
    country: 'USA',
    zipOrPostcode: '10001',
  ),
  const Address(
    line1: '456 Elm Street',
    line2: null,
    city: 'London',
    state: 'England',
    country: 'UK',
    zipOrPostcode: 'SW1A 1AA',
  ),
  const Address(
    line1: '789 Oak Avenue',
    line2: 'Suite 12',
    city: 'Toronto',
    state: 'ON',
    country: 'Canada',
    zipOrPostcode: 'M5J 2N8',
  ),
  const Address(
    line1: '101 Pine Street',
    line2: 'Floor 3',
    city: 'San Francisco',
    state: 'CA',
    country: 'USA',
    zipOrPostcode: '94111',
    otherAddressDetails: 'Near the waterfront',
  ),
];
