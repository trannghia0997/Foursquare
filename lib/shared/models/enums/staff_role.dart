import 'package:json_annotation/json_annotation.dart';

enum StaffRole {
  @JsonValue('salesperson')
  salesperson,
  @JsonValue('warehouse')
  warehouse,
  @JsonValue('delivery')
  delivery,
  @JsonValue('other')
  other,
}
