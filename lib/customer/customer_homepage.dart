import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:convex_bottom_bar/convex_bottom_bar.dart";
import "package:foursquare/customer/cart.dart";
import "package:foursquare/customer/delivery_process.dart";
import "package:foursquare/customer/home.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/shared/screen/notification.dart";

class CustomerHomepage extends HookWidget {
  const CustomerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    // Thanh tìm kiếm đã được mở hay chưa
    final isSearchBarVisible = useState<bool>(false);

    var containerList = <Widget>[
      Container(alignment: Alignment.center, child: const HomeScreen()),
      Container(
        alignment: Alignment.center,
        child: const DeliveryProcess(),
      ),
      Container(
        alignment: Alignment.center,
        child: const CartScreen(
          isAppBarVisible: false,
        ),
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

    return Scaffold(
      appBar: AppBar(
        title: isSearchBarVisible.value
            ? const TextField(
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm sản phẩm...',
                ),
              )
            : const Text('Foursquare App'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Khi nhấn vào biểu tượng tìm kiếm, chuyển trạng thái để hiển thị thanh tìm kiếm
              isSearchBarVisible.value = !isSearchBarVisible.value;
            },
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home_outlined, title: 'Trang chủ'),
          TabItem(icon: Icons.receipt_outlined, title: 'Đơn hàng'),
          TabItem(icon: Icons.shopping_cart_outlined, title: 'Cart'),
          TabItem(icon: Icons.notifications_outlined, title: 'Thông báo'),
          TabItem(icon: Icons.account_circle_outlined, title: 'Tài khoản'),
        ],
        onTap: (int index) {
          currentPageIndex.value = index;
        },
        backgroundColor: Theme.of(context).colorScheme.surface,
        color: Theme.of(context).colorScheme.onSurface,
        activeColor: Theme.of(context).colorScheme.primary,
        style: TabStyle.fixedCircle,
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
