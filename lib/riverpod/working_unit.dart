import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/working_unit_type.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_unit.g.dart';
part 'working_unit.freezed.dart';

@freezed
class WorkingUnitInfo with _$WorkingUnitInfo {
  const factory WorkingUnitInfo({
    required WorkingUnitDto workingUnit,
    AddressDto? address,
  }) = _WorkingUnitInfo;
}

@riverpod
Future<List<WorkingUnitInfo>> allWorkingUnitInfo(
    AllWorkingUnitInfoRef ref) async {
  return (await PBApp.instance.collection('working_units').getFullList(
            sort: '-created',
            expand: 'addressId',
          ))
      .map(
    (obj) {
      final workingUnit = WorkingUnitDto.fromRecord(obj);
      final address = obj.expand['addressId']?.isEmpty ?? true
          ? null
          : AddressDto.fromRecord(obj.expand['addressId']!.first);
      return WorkingUnitInfo(workingUnit: workingUnit, address: address);
    },
  ).toList();
}

@riverpod
Future<List<WorkingUnitInfo>> workingUnitInfoByType(
    WorkingUnitInfoByTypeRef ref, WorkingUnitType type) async {
  final list = await ref.watch(allWorkingUnitInfoProvider.future);
  return list.where((element) => element.workingUnit.type == type).toList();
}
