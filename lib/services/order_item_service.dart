import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/order_item.dart';

class OrderItemService with BaseService<OrderItem> {
  @override
  String get resourceName => 'order_items';
}
