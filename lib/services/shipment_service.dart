import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/shipment.dart';

class ShipmentService with BaseService<Shipment> {
  @override
  String get resourceName => 'shipments';
}
