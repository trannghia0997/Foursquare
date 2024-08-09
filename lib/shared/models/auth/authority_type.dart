import 'package:json_annotation/json_annotation.dart';

enum AuthorityType {
  @JsonValue('ROLE_ADMIN')
  admin,
  @JsonValue('ROLE_USER')
  user,
  @JsonValue('ROLE_SALESPERSON')
  salesperson,
  @JsonValue('ROLE_WAREHOUSE')
  warehouse,
  @JsonValue('ROLE_DELIVERY')
  delivery,
  @JsonValue('ROLE_MANAGER')
  manager,
}
