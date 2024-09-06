import 'package:json_annotation/json_annotation.dart';

enum WorkingUnitType {
  @JsonValue('warehouse')
  warehouse,
  @JsonValue('office')
  office,
  @JsonValue('delivery')
  delivery,
  @JsonValue('other')
  other,
}
