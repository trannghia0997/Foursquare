import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  @JsonSerializable(includeIfNull: false)
  const factory Address({
    String? id,
    String? line1,
    @JsonKey(includeIfNull: true) String? line2,
    String? city,
    String? state,
    String? country,
    @JsonKey(includeIfNull: true) String? zipOrPostalcode,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
