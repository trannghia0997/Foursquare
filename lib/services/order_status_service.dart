import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/order_status.dart';

class OrderStatusService with BaseService<OrderStatus> {
  @override
  String get resourceName => 'order_statuses';
}
