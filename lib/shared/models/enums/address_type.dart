import 'package:json_annotation/json_annotation.dart';

enum AddressType {
  @JsonValue('HOME')
  home,
  @JsonValue('WORK')
  work,
  @JsonValue('BILLING')
  billing,
  @JsonValue('SHIPPING')
  shipping,
  @JsonValue('OTHER')
  other,
}
