import 'package:json_annotation/json_annotation.dart';

enum StaffStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('suspended')
  suspended,
  @JsonValue('terminated')
  terminated,
  @JsonValue('other')
  other,
}
