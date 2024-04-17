// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foursquare_client/client/cart.dart';
import 'package:foursquare_client/data/order.dart';
import 'package:foursquare_client/manager/detailTask.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskPage extends HookConsumerWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Assuming filteredOrder is a list of orders obtained from somewhere
    List<Order> filteredOrder = orders; // Initialize with an empty list

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
                        product: filteredOrder[index].products.first,
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
