import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_info.g.dart';
part 'staff_info.freezed.dart';

@freezed
class StaffInfo with _$StaffInfo {
  const factory StaffInfo({
    required StaffInfoDto staff,
    required UserDto user,
    required WorkingUnitDto workingUnit,
  }) = _StaffInfo;
}

@riverpod
Future<StaffInfo> staffInfoByUser(StaffInfoByUserRef ref, String userId) async {
  return await PBApp.instance
      .collection('staff_information')
      .getFullList(
        filter: 'userId = $userId',
        expand: 'workingUnitId',
      )
      .then((value) {
    final staffInfo = StaffInfoDto.fromJson(value.first.toJson());
    final workingUnit = WorkingUnitDto.fromJson(
        value.first.expand['workingUnitId']!.first.toJson());
    return StaffInfo(
      staff: staffInfo,
      user: UserDto.fromRecord(PBApp.instance.authStore.model),
      workingUnit: workingUnit,
    );
  });
}

@riverpod
Future<List<StaffInfo>> allWarehouseAndDeliveryStaff(
    AllWarehouseAndDeliveryStaffRef ref) async {
  return (await PBApp.instance.collection('staff_information').getFullList(
            sort: '-created',
            expand: 'userId,workingUnitId',
            filter: 'role = "warehouse" || role = "delivery"',
          ))
      .map(
    (obj) {
      final staffInfo = StaffInfoDto.fromJson(obj.toJson());
      final userInfo = UserDto.fromJson(obj.expand['userId']!.first.toJson());
      final workingUnit =
          WorkingUnitDto.fromJson(obj.expand['workingUnitId']!.first.toJson());
      return StaffInfo(
        staff: staffInfo,
        user: userInfo,
        workingUnit: workingUnit,
      );
    },
  ).toList();
}
