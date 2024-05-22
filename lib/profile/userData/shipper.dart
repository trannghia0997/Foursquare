import 'package:foursquare_client/data/order.dart';
import 'package:foursquare_client/profile/userData/user.dart';

class Shipper extends User {
  List<Order> task;

  Shipper(
      {required super.image,
      required super.name,
      required super.email,
      required super.phone,
      required super.addresses,
      required super.password,
      required super.role,
      required this.task});
}
