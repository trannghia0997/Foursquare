import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/working_unit.dart';

class WorkingUnitService with BaseService<WorkingUnit> {
  @override
  String get resourceName => 'working_units';
}
