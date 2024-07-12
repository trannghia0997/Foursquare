import 'package:json_annotation/json_annotation.dart';

enum MessageType {
  @JsonValue('TEXT')
  text,
  @JsonValue('IMAGE')
  image,
  @JsonValue('OTHER')
  other,
}
