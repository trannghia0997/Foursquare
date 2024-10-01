import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/manager/list_order.dart";
import "package:foursquare/manager/home.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/shared/screen/notification.dart";
import "package:foursquare/shared/widgets/search/order_search.dart";

class ManagerHomepage extends HookWidget {
  const ManagerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);

    var containerList = <Widget>[
      Container(
        alignment: Alignment.center,
        child: const HomeScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ListOrderScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const NotificationScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ProfileScreen(),
      ),
    ];

    var appBarConfigurations = [
      AppBar(
        title: const Text('Trang chủ'),
        centerTitle: true,
      ),
      AppBar(
        title: const Text('Đơn hàng'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderSearchPage(
                    isManager: true,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      AppBar(
        title: const Text('Thông báo'),
        centerTitle: true,
      ),
      AppBar(
        title: const Text('Hồ sơ'),
        centerTitle: true,
      ),
    ];

    return Scaffold(
      appBar: appBarConfigurations[currentPageIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined),
            label: 'Đơn hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Hồ sơ',
          ),
        ],
        currentIndex: currentPageIndex.value,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          currentPageIndex.value = index;
        },
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: containerList[currentPageIndex.value],
      ),
    );
  }
}
