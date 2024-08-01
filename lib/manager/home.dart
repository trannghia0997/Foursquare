import 'package:flutter/material.dart';
import 'package:foursquare/manager/product_manament.dart';
import 'package:foursquare/manager/manageStaff.dart';
import 'package:foursquare/manager/warehouse.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/sliderView.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      "icon": Icons.home,
      "route": const ProductManamentPage(),
      "title": "Quản lý Sản phẩm"
    },
    {
      "icon": Icons.car_rental,
      "route": const ManageStaffPage(),
      "title": "Quản lý Nhân viên"
    },
    {
      "icon": Icons.restaurant,
      "route": const WarehousePage(),
      "title": "Quản lý Kho"
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Các chức năng quản lý',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: SliderView(),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 150.0,
              maxHeight: 150.0,
              child: MenuServicesPage(services: services),
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
                    _buildSalesActivityTile(
                      color: Colors.orange,
                      icon: Icons.inventory,
                      quantity: 5,
                      description: 'Đơn hàng chưa xác nhận',
                    ),
                    _buildSalesActivityTile(
                      color: Colors.yellow,
                      icon: Icons.local_shipping,
                      quantity: 0,
                      description: 'Đơn hàng đang chuẩn bị',
                    ),
                    _buildSalesActivityTile(
                      color: Colors.blue,
                      icon: Icons.delivery_dining,
                      quantity: 4,
                      description: 'Đơn hàng đang vận chuyển',
                    ),
                    _buildSalesActivityTile(
                      color: Colors.green,
                      icon: Icons.receipt_long,
                      quantity: 10,
                      description: 'Đơn hàng hoàn thành',
                    ),
                    _buildSalesActivityTile(
                      color: Colors.red,
                      icon: Icons.cancel_presentation_outlined,
                      quantity: 10,
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

  Widget _buildSalesActivityTile({
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

class MenuServicesPage extends StatelessWidget {
  final List<Map<String, dynamic>> services;

  const MenuServicesPage({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      itemCount: services.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => services[index]["route"]),
            );
          },
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    services[index]["icon"],
                    size: 30.0,
                    color: Colors.red[700],
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    services[index]["title"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight > minHeight ? maxHeight : minHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxExtent ||
        minHeight != oldDelegate.minExtent ||
        child != (oldDelegate as _SliverAppBarDelegate).child;
  }
}
