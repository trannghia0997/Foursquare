import 'package:json_annotation/json_annotation.dart';

enum AddressType {
  @JsonValue('home')
  home,
  @JsonValue('work')
  work,
  @JsonValue('billing')
  billing,
  @JsonValue('shipping')
  shipping,
  @JsonValue('other')
  other,
}
