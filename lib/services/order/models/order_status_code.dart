import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'order_status_code.freezed.dart';
part 'order_status_code.g.dart';

@freezed
class OrderStatusCode with _$OrderStatusCode implements BaseModel {
  const factory OrderStatusCode({
    required String description,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _OrderStatusCode;

  factory OrderStatusCode.fromRecord(RecordModel record) =>
      OrderStatusCode.fromJson(record.toJson()).copyWith(record: record);

  factory OrderStatusCode.fromJson(Map<String, Object?> json) =>
      _$OrderStatusCodeFromJson(json);
}
