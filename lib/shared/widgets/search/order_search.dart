import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/manager/detail_task.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/widgets/order_tile.dart';
import 'package:foursquare/shopper/detail_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderSearchPage extends HookConsumerWidget {
  const OrderSearchPage({super.key, this.isManager});

  final bool? isManager;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final searchResults = useState<List<OrderInfo>>([]);

    Future<void> performSearch(String query) async {
      if (query.isEmpty) {
        searchResults.value = [];
        return;
      }
      final results =
          (await ref.read(allOrderInfoProvider.future)).where((element) {
        return element.order.id.contains(query) ||
            (element.guest?.name.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            element.creator.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
      searchResults.value = results;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm kiếm đơn hàng'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: 'Tìm kiếm',
                border: OutlineInputBorder(),
              ),
              onChanged: (query) {
                performSearch(query);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.value.length,
              itemBuilder: (context, index) {
                final orderInfo = searchResults.value[index];
                return OrderTile(
                  isManager: isManager ?? false,
                  orderInfo: orderInfo,
                  onTap: () {
                    if (isManager == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ManagerDetailOrderScreen(
                            order: orderInfo.order,
                          ),
                        ),
                      );
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShopperDetailOrderScreen(
                          orderInfo: orderInfo,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
