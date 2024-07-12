import 'package:json_annotation/json_annotation.dart';

enum ShipmentType {
  @JsonValue('OUTBOUND')
  outbound,
  @JsonValue('INBOUND')
  inbound,
  @JsonValue('TRANSFER')
  transfer,
  @JsonValue('RETURN')
  return_,
  @JsonValue('EXCHANGE')
  exchange,
  @JsonValue('OTHER')
  other,
}
