import 'package:freezed_annotation/freezed_annotation.dart';
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
class User with _$User {
  const factory User({
    Uri? avatar,
    required String email,
    required String password,
    String? name,
    String? phone,
    required Role role,
    @JsonKey(name: 'work_unit_id') String? workUnitId,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
