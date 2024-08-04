import 'dart:convert';

import 'package:foursquare/services/auth/mocks/data.dart';
import 'package:foursquare/services/auth/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _storeUser(User user) async {
    final prefs = await _prefs;
    await prefs.setString('currentUser', jsonEncode(user));
  }

  Future<void> _clearUser() async {
    final prefs = await _prefs;
    await prefs.remove('currentUser');
  }

  Future<User?> get currentUser async {
    final prefs = await _prefs;
    final userJson = prefs.getString('currentUser');
    if (userJson == null) {
      return null;
    }

    return User.fromJson(jsonDecode(userJson));
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
