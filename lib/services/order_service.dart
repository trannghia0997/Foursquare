import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/order.dart';

class OrderService with BaseService<Order> {
  @override
  String get resourceName => 'orders';
}
