import 'package:foursquare/shared/models/enums/staff_role.dart';
import 'package:foursquare/shared/models/enums/staff_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'staff_info.freezed.dart';
part 'staff_info.g.dart';

@freezed
class StaffInfoDTO with _$StaffInfoDTO {
  const factory StaffInfoDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "statusCode") required StaffStatus statusCode,
    @JsonKey(name: "role") required StaffRole role,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "workingUnitId") String? workingUnitId,
  }) = _StaffInfoDTO;

  factory StaffInfoDTO.fromJson(Map<String, Object?> json) =>
      _$StaffInfoDTOFromJson(json);

  factory StaffInfoDTO.fromRecord(RecordModel obj) =>
      StaffInfoDTO.fromJson(obj.toJson());
}

@unfreezed
class StaffInfoEditDTO with _$StaffInfoEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory StaffInfoEditDTO({
    @JsonKey(name: "statusCode") required StaffStatus statusCode,
    @JsonKey(name: "role") required StaffRole role,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "workingUnitId") String? workingUnitId,
  }) = _StaffInfoEditDTO;

  factory StaffInfoEditDTO.fromJson(Map<String, Object?> json) =>
      _$StaffInfoEditDTOFromJson(json);
}
