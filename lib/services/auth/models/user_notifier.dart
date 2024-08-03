import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foursquare/services/auth/mocks/data.dart';
import 'user.dart';

class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier() : super(userData);

  // Add a new user to the list
  void addUser(User user) {
    state = [...state, user];
  }

  // Update the staff status of a user
  void updateStaffStatus(String userId, StaffStatus status) {
    state.firstWhere((user) => user.id == userId).setStaffStatus(status);
  }
}

// Define a provider for the UserNotifier
final userProvider = StateNotifierProvider<UserNotifier, List<User>>((ref) {
  return UserNotifier();
});
