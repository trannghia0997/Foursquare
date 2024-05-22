import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'work_unit.freezed.dart';
part 'work_unit.g.dart';

enum WorkUnitType {
  @JsonValue('warehouse')
  warehouse,
  @JsonValue('office')
  office,
  @JsonValue('delivery')
  delivery
}

@freezed
class WorkUnit with _$WorkUnit implements BaseModel {
  const factory WorkUnit({
    required String id,
    required DateTime created,
    required DateTime updated,
    required String name,
    @JsonKey(name: 'address_id') String? addressId,
    required double total,
    @JsonKey(name: 'status_id') required String statusId,
    required WorkUnitType type,
    String? image,
  }) = _Invoice;

  factory WorkUnit.fromRecord(RecordModel record) =>
      WorkUnit.fromJson(record.toJson());

  factory WorkUnit.fromJson(Map<String, Object?> json) =>
      _$WorkUnitFromJson(json);
}
