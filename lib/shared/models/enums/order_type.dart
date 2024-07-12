import 'package:json_annotation/json_annotation.dart';

enum OrderType {
  @JsonValue('SALE')
  sale,
  @JsonValue('RETURN')
  return_,
  @JsonValue('EXCHANGE')
  exchange,
  @JsonValue('TRANSFER')
  transfer,
  @JsonValue('OTHER')
  other,
}
