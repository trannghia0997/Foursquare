import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/chat/chatbox.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/riverpod/staff_info.dart";
import "package:foursquare/services/pb.dart";
import "package:foursquare/shipper/task.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class ShipperHomepage extends HookConsumerWidget {
  const ShipperHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(
        false); // Trạng thái để kiểm tra xem thanh tìm kiếm đã được mở hay chưa
    final staffInfo = ref
        .watch(staffInfoProvider(PBApp.instance.authStore.model.id))
        .requireValue;

    var containerList = <Widget>[
      Container(
        alignment: Alignment.center,
        child: TaskScreen(
          staffInfo: staffInfo.staff,
        ),
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
            icon: Icon(Icons.chat_outlined),
            label: 'Nhắn tin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Hồ sơ',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   label: 'School',
          // ),
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
