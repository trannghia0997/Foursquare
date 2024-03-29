// ignore_for_file: file_names, unused_import
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare_client/chat/chatbox.dart";
import "package:foursquare_client/client/productListSuccess.dart";
import "package:foursquare_client/data/order.dart";
import "package:foursquare_client/preparer/task.dart";
import "package:foursquare_client/profile/profile_page.dart";

class Phomepage extends HookWidget {
  const Phomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(
        false); // Trạng thái để kiểm tra xem thanh tìm kiếm đã được mở hay chưa

    var containerList = <Widget>[
      Container(alignment: Alignment.center, child: const TaskScreen()),
      Container(
        alignment: Alignment.center,
        child: const ProductListSuccess(),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
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
