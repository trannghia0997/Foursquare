import 'package:foursquare/shared/models/enums/staff_role.dart';
import 'package:foursquare/shared/models/enums/staff_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'staff_info.freezed.dart';
part 'staff_info.g.dart';

@freezed
class StaffInfoDto with _$StaffInfoDto {
  const factory StaffInfoDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "statusCode") required StaffStatus statusCode,
    @JsonKey(name: "role") required StaffRole role,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "workingUnitId") String? workingUnitId,
  }) = _StaffInfoDto;

  factory StaffInfoDto.fromJson(Map<String, Object?> json) =>
      _$StaffInfoDtoFromJson(json);

  factory StaffInfoDto.fromRecord(RecordModel obj) =>
      StaffInfoDto.fromJson(obj.toJson());
}

@unfreezed
class StaffInfoEditDto with _$StaffInfoEditDto {
  @JsonSerializable(includeIfNull: false)
  factory StaffInfoEditDto({
    @JsonKey(name: "statusCode") required StaffStatus statusCode,
    @JsonKey(name: "role") required StaffRole role,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "workingUnitId") String? workingUnitId,
  }) = _StaffInfoEditDto;

  factory StaffInfoEditDto.fromJson(Map<String, Object?> json) =>
      _$StaffInfoEditDtoFromJson(json);
}
