import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_status_code.freezed.dart';
part 'order_status_code.g.dart';

@freezed
class OrderStatusCode with _$OrderStatusCode {
  const factory OrderStatusCode({
    required String description,
  }) = _OrderStatusCode;

  factory OrderStatusCode.fromJson(Map<String, Object?> json) =>
      _$OrderStatusCodeFromJson(json);
}
