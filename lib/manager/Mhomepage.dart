// ignore_for_file: file_names
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare_client/chat/chatbox.dart";
import "package:foursquare_client/manager/manageProduct.dart";
import "package:foursquare_client/manager/manageStaff.dart";
import "package:foursquare_client/manager/menuNav.dart";
import "package:foursquare_client/manager/warehouse.dart";
import "package:foursquare_client/profile/profile_page.dart";

class Mhomepage extends HookWidget {
  const Mhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(
        false); // Trạng thái để kiểm tra xem thanh tìm kiếm đã được mở hay chưa

    var containerList = <Widget>[
      Container(alignment: Alignment.center, child: const WarehousePage()),
      Container(alignment: Alignment.center, child: const ManageStaffPage()),
      Container(
        alignment: Alignment.center,
        child: const ManageProductPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ChatPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ProfilePage(),
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
            label: 'Kho bãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Nhân viên',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
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
// TabItem(icon: Icons.home_outlined, title: 'Trang chủ'),
// TabItem(icon: Icons.receipt_outlined, title: 'Đơn hàng'),
// TabItem(icon: Icons.chat_outlined, title: 'Nhắn tin'),
// TabItem(icon: Icons.account_circle_outlined, title: 'Tài khoản'),
