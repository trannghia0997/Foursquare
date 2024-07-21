import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/shipment_status.dart';

class ShipmentStatusService with BaseService<ShipmentStatus> {
  @override
  String get resourceName => 'shipment_statuses';
}
