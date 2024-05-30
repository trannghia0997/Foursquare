import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum Role {
  @JsonValue('customer')
  customer,
  @JsonValue('salesperson')
  salesperson,
  @JsonValue('warehouse')
  warehouse,
  @JsonValue('shipper')
  shipper,
  @JsonValue('manager')
  manager,
}

@freezed
class User with _$User implements BaseModel {
  const factory User({
    String? avatar,
    required String email,
    required bool emailVisibility,
    String? name,
    String? phone,
    required Role role,
    required String username,
    @JsonKey(name: 'work_unit_id') String? workUnitId,
    required bool verified,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _User;

  factory User.fromRecord(RecordModel record) =>
      User.fromJson(record.toJson()).copyWith(record: record);

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
