import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:convex_bottom_bar/convex_bottom_bar.dart";
import "package:foursquare/shopper/cart.dart";
import "package:foursquare/shopper/placed_order_page.dart";
import "package:foursquare/shopper/home.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/shared/screen/notification.dart";

class ShopperHomepage extends HookWidget {
  const ShopperHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);

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
        title: const Text('Foursquare App'),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
