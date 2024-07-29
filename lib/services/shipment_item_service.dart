import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/shipment_item.dart';

class ShipmentItemService with BaseService<ShipmentItem> {
  @override
  String get resourceName => 'shipment_items';
}
