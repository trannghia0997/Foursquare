import 'package:foursquare/shared/models/enums/working_unit_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'working_unit.freezed.dart';
part 'working_unit.g.dart';

@freezed
class WorkingUnitDTO with _$WorkingUnitDTO {
  const factory WorkingUnitDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required WorkingUnitType type,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "addressId") String? addressId,
  }) = _WorkingUnitDTO;

  factory WorkingUnitDTO.fromJson(Map<String, Object?> json) =>
      _$WorkingUnitDTOFromJson(json);

  factory WorkingUnitDTO.fromRecord(RecordModel obj) =>
      WorkingUnitDTO.fromJson(obj.toJson());
}

@unfreezed
class WorkingUnitEditDTO with _$WorkingUnitEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory WorkingUnitEditDTO({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required WorkingUnitType type,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "addressId") String? addressId,
  }) = _WorkingUnitEditDTO;

  factory WorkingUnitEditDTO.fromJson(Map<String, Object?> json) =>
      _$WorkingUnitEditDTOFromJson(json);
}
