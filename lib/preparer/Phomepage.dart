// ignore_for_file: file_names, unused_import
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:Foursquare/chat/chatbox.dart";
import "package:Foursquare/data/order.dart";
import "package:Foursquare/preparer/task.dart";
import "package:Foursquare/preparer/warehouse.dart";
import "package:Foursquare/profile/profile_page.dart";

class WarehouseHomepage extends HookWidget {
  const WarehouseHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(
        false); // Trạng thái để kiểm tra xem thanh tìm kiếm đã được mở hay chưa

    var containerList = <Widget>[
      Container(alignment: Alignment.center, child: const TaskScreen()),
      Container(
        alignment: Alignment.center,
        child: const WarehousePage(),
      ),
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
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
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
            label: 'Nhiệm vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Kho bãi',
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
    );
  }
}

// Yêu cầu đặc biệt không đáp ứng được -> ghi lý do
// Đáp án được -> đơn hàng lấy hay ko?
// Lấy đơn được -> theo quy trình
// Thêm các ghi chú của khách, hình thức thanh toán -> shipper biết để thu tiền
// Báo danh mục chưa hoàn thành thì phải có nút riêng: chưa đủ đk khách, người chưa soạn tới, không đủ hàng
