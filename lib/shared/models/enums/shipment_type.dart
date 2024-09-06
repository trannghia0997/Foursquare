import 'package:json_annotation/json_annotation.dart';

enum ShipmentType {
  @JsonValue('outbound')
  outbound,
  @JsonValue('inbound')
  inbound,
  @JsonValue('transfer')
  transfer,
  @JsonValue('return')
  return_,
  @JsonValue('exchange')
  exchange,
  @JsonValue('other')
  other,
}
