// ignore_for_file: use_super_parameters, must_be_immutable

import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foursquare/manager/detailTask.dart';
import 'package:foursquare/profile/userData/user.dart';
import 'package:foursquare/profile/userData/user_data.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User staff = UserData.preparerUser;
    if (staff.role == Role.preparer) {}

    List<Order> filteredOrder = [];

    // Switch-case block to filter orders based on staff's role
    switch (staff.role) {
      case Role.preparer:
        filteredOrder = orders
            .where((order) => order.orderStatus == OrderStatus.inProgress)
            .toList();
        break;
      case Role.shipper:
        filteredOrder = orders
            .where((order) => order.orderStatus == OrderStatus.assigned)
            .toList();
        break;
      default:
        // Handle other roles if necessary
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hãy chọn đơn hàng!'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: filteredOrder.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                SystemSound.play(SystemSoundType.click);
                _pushScreen(context: context, order: filteredOrder[index]);
              },
              child: SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 125,
                      child: ProductImage(
                        product:
                            filteredOrder[index].listOrderProduct.first.product,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ID: ${filteredOrder[index].id}",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // TODO: customer name
                          Text(
                            filteredOrder[index].creatorId,
                          ),
                          Text(
                            filteredOrder[index].addressId,
                          ),
                          // Add other information or widgets related to the product
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _pushScreen({required BuildContext context, required Order order}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(
        data: themeData,
        child: DetailTaskScreen(order: order),
      ),
    ),
  );
}
