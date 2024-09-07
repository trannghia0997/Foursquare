import 'package:foursquare/shared/models/enums/working_unit_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'working_unit.freezed.dart';
part 'working_unit.g.dart';

@freezed
class WorkingUnitDto with _$WorkingUnitDto {
  const factory WorkingUnitDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required WorkingUnitType type,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "addressId") String? addressId,
  }) = _WorkingUnitDto;

  factory WorkingUnitDto.fromJson(Map<String, Object?> json) =>
      _$WorkingUnitDtoFromJson(json);

  factory WorkingUnitDto.fromRecord(RecordModel obj) =>
      WorkingUnitDto.fromJson(obj.toJson());
}

@unfreezed
class WorkingUnitEditDto with _$WorkingUnitEditDto {
  @JsonSerializable(includeIfNull: false)
  factory WorkingUnitEditDto({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required WorkingUnitType type,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "addressId") String? addressId,
  }) = _WorkingUnitEditDto;

  factory WorkingUnitEditDto.fromJson(Map<String, Object?> json) =>
      _$WorkingUnitEditDtoFromJson(json);
}
