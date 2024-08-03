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

enum StaffStatus {
  @JsonValue('working')
  working,
  @JsonValue('absent')
  absent,
  @JsonValue('free')
  free,
  @JsonValue('quited')
  quited,
  @JsonValue('none')
  none,
}

@unfreezed
class User with _$User {
  const User._();

  factory User({
    String? id,
    String? avatar,
    required String email,
    required String password,
    String? name,
    String? phone,
    required StaffStatus staffStatus,
    required Role role,
    @JsonKey(name: 'work_unit_id') String? workUnitId,
  }) = _User;

  void setStaffStatus(StaffStatus status) {
    staffStatus = status;
  }

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
