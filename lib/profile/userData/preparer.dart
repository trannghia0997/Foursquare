import 'package:Foursquare/data/order.dart';
import 'package:Foursquare/profile/userData/user.dart';

class Preparer extends User {
  List<Order> task;

  Preparer({
    required super.image,
    required super.name,
    required super.email,
    required super.phone,
    required super.addresses,
    required super.password,
    required super.role,
    required this.task,
  });

  void addTask(Order order) {
    task.add(order);
  }
}
