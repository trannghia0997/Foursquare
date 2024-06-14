import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'colour.freezed.dart';
part 'colour.g.dart';

@freezed
class Colour with _$Colour {
  const factory Colour({
    required String name,
    required String hex,
  }) = _Colour;

  factory Colour.fromJson(Map<String, Object?> json) => _$ColourFromJson(json);
}
