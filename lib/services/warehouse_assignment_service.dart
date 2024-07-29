import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/warehouse_assignment.dart';

class WarehouseAssignmentService with BaseService<WarehouseAssignment> {
  @override
  String get resourceName => 'warehouse_assignments';
}
