import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address extends AbstractResourceModel with _$Address {
  @JsonSerializable(includeIfNull: false)
  const factory Address({
    String? id,
    String? line1,
    JsonNullableType<String>? line2,
    String? city,
    String? state,
    String? country,
    JsonNullableType<String>? zipOrPostalcode,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
