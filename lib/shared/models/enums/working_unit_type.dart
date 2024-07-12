import 'package:json_annotation/json_annotation.dart';

enum WorkingUnitType {
  @JsonValue('WAREHOUSE')
  warehouse,
  @JsonValue('OFFICE')
  office,
  @JsonValue('DELIVERY')
  delivery,
  @JsonValue('OTHER')
  other,
}
