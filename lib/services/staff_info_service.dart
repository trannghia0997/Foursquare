import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/staff_info.dart';

class StaffInfoService with BaseService<StaffInfo> {
  @override
  String get resourceName => 'staff-infos';
}
