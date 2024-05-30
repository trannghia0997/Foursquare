import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address implements BaseModel {
  const factory Address({
    required String line1,
    String? line2,
    required String city,
    required String state,
    required String country,
    @JsonKey(name: 'zip_or_postcode') String? zipOrPostcode,
    @JsonKey(name: 'other_address_details') String? otherAddressDetails,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Address;

  factory Address.fromRecord(RecordModel record) =>
      Address.fromJson(record.toJson()).copyWith(record: record);

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
