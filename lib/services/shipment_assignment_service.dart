import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/shipment_assignment.dart';

class ShipmentAssignmentService with BaseService<ShipmentAssignment> {
  @override
  String get resourceName => 'shipment_assignments';
}
