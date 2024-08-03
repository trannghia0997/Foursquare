import 'package:foursquare/services/auth/mocks/data.dart';
import 'package:foursquare/services/auth/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _storeUser(User user) async {
    final prefs = await _prefs;
    await prefs.setString('email', user.email);
    await prefs.setString('role', user.role.toString());
  }

  Future<void> _clearUser() async {
    final prefs = await _prefs;
    await prefs.remove('email');
    await prefs.remove('role');
  }

  Future<User?> get currentUser async {
    final prefs = await _prefs;
    final email = prefs.getString('email');
    final role = prefs.getString('role');

    if (email == null || role == null) {
      return null;
    }

    return User(
      email: email,
      role: Role.values.firstWhere((r) => r.toString() == role),
      password: '',
      staffStatus: StaffStatus.none,
    );
  }

  Future<void> login(String email, String password) async {
    final user = userData.firstWhere(
      (user) => user.email == email && user.password == password,
      orElse: () => throw Exception('Invalid email or password'),
    );
    await _storeUser(user);
  }

  Future<void> logout() async {
    await _clearUser();
  }
}
