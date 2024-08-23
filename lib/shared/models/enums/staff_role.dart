import 'package:json_annotation/json_annotation.dart';

enum StaffRole {
  @JsonValue('SALESPERSON')
  salesperson,
  @JsonValue('WAREHOUSE')
  warehouse,
  @JsonValue('DELIVERY')
  delivery,
  @JsonValue('MANAGER')
  manager,
  @JsonValue('OTHER')
  other,
}
