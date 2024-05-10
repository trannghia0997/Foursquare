import 'package:foursquare_client/data/order.dart';
import 'package:foursquare_client/profile/userData/user.dart';

class Preparer extends User {
  List<Order> task;

  Preparer({
    required super.image,
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    required super.password,
    required super.role,
    required this.task,
  });

  void addTask(Order order){
    task.add(order);
  }
}
