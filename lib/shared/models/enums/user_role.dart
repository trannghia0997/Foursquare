import 'package:json_annotation/json_annotation.dart';

enum UserRole {
  @JsonValue('customer')
  customer,
  @JsonValue('staff')
  staff,
  @JsonValue('manager')
  manager,
}
