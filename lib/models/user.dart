// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

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
    required String id,
    required DateTime created,
    @JsonKey(name: 'address_ids') required Iterable<String> addressIdList,
    required String avatar,
    required String email,
    required bool emailVisibility,
    required String name,
    required String phone,
    required Role role,
    required String username,
    required bool verified,
  }) = _User;

  factory User.fromRecord(RecordModel record) => User.fromJson(record.toJson());

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
