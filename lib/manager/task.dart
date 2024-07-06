// ignore_for_file: use_super_parameters, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Foursquare/customer/cart.dart';
import 'package:Foursquare/data/order.dart';
import 'package:Foursquare/data/product.dart';
import 'package:Foursquare/manager/detailTask.dart';
import 'package:Foursquare/profile/userData/user.dart';
import 'package:Foursquare/profile/userData/user_data.dart';

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
        filteredOrder =
            orders.where((order) => order.status == Status.processing).toList();
        break;
      case Role.shipper:
        filteredOrder =
            orders.where((order) => order.status == Status.delivering).toList();
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
                            filteredOrder[index].orderProducts.first.product,
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
                          Text(
                            filteredOrder[index].clientName,
                          ),
                          Text(
                            filteredOrder[index].clientAddress,
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
