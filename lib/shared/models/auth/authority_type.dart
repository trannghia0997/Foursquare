import 'package:json_annotation/json_annotation.dart';

enum AuthorityType {
  @JsonValue('ROLE_ADMIN')
  admin,
  @JsonValue('ROLE_USER')
  user,
  @JsonValue('ROLE_STAFF')
  staff,
  @JsonValue('ROLE_MANAGER')
  manager,
}
