import 'package:json_annotation/json_annotation.dart';

enum MessageType {
  @JsonValue('text')
  text,
  @JsonValue('image')
  image,
  @JsonValue('other')
  other,
}
