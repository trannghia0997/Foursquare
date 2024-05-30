import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
class UserAddress with _$UserAddress implements BaseModel {
  const factory UserAddress({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'address_id') required String addressId,
    @JsonKey(name: 'friendly_name') required String friendlyName,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _UserAddress;

  factory UserAddress.fromRecord(RecordModel record) =>
      UserAddress.fromJson(record.toJson()).copyWith(record: record);

  factory UserAddress.fromJson(Map<String, Object?> json) =>
      _$UserAddressFromJson(json);
}
