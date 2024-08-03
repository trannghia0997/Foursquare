import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/chat/chatbox.dart";
import "package:foursquare/manager/list_order.dart";
import "package:foursquare/manager/menuNav.dart";
import "package:foursquare/manager/home.dart";
import "package:foursquare/profile/profile_page.dart";

class ManagerHomepage extends HookWidget {
  const ManagerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(
        false); // Trạng thái để kiểm tra xem thanh tìm kiếm đã được mở hay chưa

    var containerList = <Widget>[
      Container(alignment: Alignment.center, child: const HomeScreen()),
      Container(alignment: Alignment.center, child: const ListOrderScreen()),
      Container(
        alignment: Alignment.center,
        child: const ChatPage(),
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
        // Open menu
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
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
            icon: Icon(Icons.chat_outlined),
            label: 'Nhắn tin',
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
      drawer: MenuNav(),
    );
  }
}