import 'package:flutter/material.dart';
import 'package:foursquare/manager/analytics/dashboard.dart';
import 'package:foursquare/manager/product_management.dart';
import 'package:foursquare/manager/staff_management.dart';
import 'package:foursquare/manager/warehouse_management.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderList = ref.watch(allOrdersProvider);
    final List<OrderDto> orders;
    switch (orderList) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncError():
        return const Center(child: Text('Error'));
      default:
        orders = orderList.requireValue;
    }

    List<Map<String, dynamic>> services = [
      {
        "icon": Icons.inventory,
        "route": const ProductManagementPage(),
        "title": "Quản lý sản phẩm"
      },
      {
        "icon": Icons.people,
        "route": const StaffManagementScreen(),
        "title": "Quản lý nhân viên"
      },
      {
        "icon": Icons.warehouse,
        "route": const WarehouseManagementPage(),
        "title": "Quản lý Kho"
      },
      {
        "icon": Icons.analytics,
        "route": const AnalyticsPage(),
        "title": "Thống kê"
      }
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 4,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final service = services[index];
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => service['route']),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(service['icon'], size: 48),
                        const SizedBox(height: 8),
                        Text(
                          service['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: services.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hoạt động bán hàng trong tháng',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildOrderCountTile(
                      color: Colors.orange,
                      icon: Icons.inventory,
                      quantity: orders
                          .where(
                            (order) =>
                                order.statusCodeId ==
                                OrderStatusCodeData.pending.id,
                          )
                          .length,
                      description: 'Đơn hàng chưa xác nhận',
                    ),
                    _buildOrderCountTile(
                      color: Colors.yellow,
                      icon: Icons.local_shipping,
                      quantity: orders
                          .where(
                            (order) =>
                                order.statusCodeId ==
                                OrderStatusCodeData.processing.id,
                          )
                          .length,
                      description: 'Đơn hàng đang chuẩn bị',
                    ),
                    _buildOrderCountTile(
                      color: Colors.blue,
                      icon: Icons.delivery_dining,
                      quantity: orders
                          .where(
                            (order) =>
                                order.statusCodeId ==
                                OrderStatusCodeData.shipped.id,
                          )
                          .length,
                      description: 'Đơn hàng đang vận chuyển',
                    ),
                    _buildOrderCountTile(
                      color: Colors.green,
                      icon: Icons.receipt_long,
                      quantity: orders
                          .where(
                            (order) =>
                                order.statusCodeId ==
                                OrderStatusCodeData.delivered.id,
                          )
                          .length,
                      description: 'Đơn hàng hoàn thành',
                    ),
                    _buildOrderCountTile(
                      color: Colors.red,
                      icon: Icons.cancel_presentation_outlined,
                      quantity: orders
                          .where(
                            (order) =>
                                order.statusCodeId ==
                                OrderStatusCodeData.cancelled.id,
                          )
                          .length,
                      description: 'Đơn hàng bị hủy bỏ',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Doanh thu của tháng',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildInventorySummaryCard(
                          title: 'Doanh thu',
                          quantity: 5000000,
                          color: Colors.green,
                        ),
                        _buildInventorySummaryCard(
                          title: 'Thất thoát',
                          quantity: 230,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderCountTile({
    required Color color,
    required IconData icon,
    required int quantity,
    required String description,
  }) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          '$quantity',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }

  Widget _buildInventorySummaryCard({
    required String title,
    required int quantity,
    required Color color,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              formatNumber(quantity),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
