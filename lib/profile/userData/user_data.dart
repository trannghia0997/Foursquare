import 'dart:convert';
import 'user.dart';
import 'preparer.dart';
import 'shipper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';

  static User myUser = User(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'Minh Nghĩa',
    email: 'nghia@gmail.com',
    phone: '0123456789',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.client,
  );

  static Preparer preparerUser = Preparer(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'Minh Nghĩa',
    email: 'preparer@gmail.com',
    phone: '0123456788',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.preparer,
    task: [],
  );

  static Preparer preparerUserA = Preparer(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'A',
    email: 'A@gmail.com',
    phone: '0123456788',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.preparer,
    task: [],
  );

  static Preparer preparerUserB = Preparer(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'B',
    email: 'B@gmail.com',
    phone: '0123456788',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.preparer,
    task: [],
  );

  static Shipper shipperUser = Shipper(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'Minh Nghĩa',
    email: 'shipper@gmail.com',
    phone: '0123456787',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.shipper,
    task: [],
  );

  static User managerUser = User(
    image:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg",
    name: 'Minh Nghĩa',
    email: 'manager@gmail.com',
    phone: '0123456786',
    address: 'KTX Bach Khoa',
    password: '12345678',
    role: Role.manager,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future<void> setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? managerUser : User.fromJson(jsonDecode(json));
  }
}

// analys data
// tự động và tay
// nhân viên off -> thế chỗ -> gán đơn hàng cho nhân viên khác
// thứ năm 16/5 9h sáng

// void main() async {
//   // Khởi tạo SharedPreferences
//   await UserData.init();

//   // Đăng nhập với mỗi người dùng và kiểm tra
//   try {
//     final loggedInUser = await loginWithUser(UserData.myUser);
//     print('Logged in as ${loggedInUser.name} with role ${loggedInUser.role}');
//   } catch (e) {
//     print('Error logging in as myUser: $e');
//   }

//   try {
//     final preparer = await loginWithUser(UserData.preparerUser);
//     print('Logged in as ${preparer.name} with role ${preparer.role}');
//   } catch (e) {
//     print('Error logging in as preparerUser: $e');
//   }

//   try {
//     final shipper = await loginWithUser(UserData.shipperUser);
//     print('Logged in as ${shipper.name} with role ${shipper.role}');
//   } catch (e) {
//     print('Error logging in as shipperUser: $e');
//   }

//   try {
//     final manager = await loginWithUser(UserData.managerUser);
//     print('Logged in as ${manager.name} with role ${manager.role}');
//   } catch (e) {
//     print('Error logging in as managerUser: $e');
//   }
// }

// Future<User> loginWithUser(User user) async {
//   // Lấy thông tin người dùng từ SharedPreferences
//   final storedUser = UserData.getUser();

//   // So sánh thông tin đăng nhập với thông tin người dùng đã lưu
//   if (user.email == storedUser.email && user.password == storedUser.password) {
//     return storedUser;
//   } else {
//     throw Exception('Invalid credentials');
//   }
// }
// A3 - Cô Vy
// Cập nhật lại quá trình giao hàng
// Quản lý , tự động chuyển cho nhân viên kho
// Đánh dấu có hàng và không có hàng -> cập nhận lại trạng thái đơn hàng
// TH hủy đơn hàng: Khách đổi ý, nhân viên hủy đơn hàng.
// Kho -> báo đơn hàng
// Khách hàng chấp nhận đơn hàng, thay mặt hàng khác cũng được
// Quản lý edit lại đơn hàng -> cập nhật cho nhân viên kho -> đơn hàng tự động hoàn thành -> chuyển cho nhân viên giao hàng
// Nhân viên giao hàng chỉ cần biết đó là gói hàng: mã giao hàng, tên người nhận, địa chỉ. Đã hoàn thành giao hàng, hủy đơn, đã thanh toán chưa?
// Hệ thống tự thông minh giải quyết các việc quản lý -> báo cáo cho người quản lý, người quản lý chỉ cần tiếp xúc khách hàng và xem báo cáo
