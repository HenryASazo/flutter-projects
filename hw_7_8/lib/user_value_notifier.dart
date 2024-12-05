import 'package:flutter/foundation.dart';
import 'user_dependency.dart';
import 'user_state.dart';

class UserValueNotifier extends ValueNotifier<UserState> {
  final int userId;
  final UserDependency dependency;

  UserValueNotifier({
    required this.userId,
    required this.dependency,
  }) : super(UserStateLoading()) {
    // Load user data when initialized
    load();
  }

  Future<void> load() async {
    if (value is! UserStateLoaded) {
      value = UserStateLoading();
      try {
        final user = await dependency.getUser(userId);
        if (user != null) {
          value = UserStateLoaded(
            id: user.id,
            firstName: user.firstName,
            lastName: user.lastName,
            email: user.email,
            avatar: user.avatar,
          );
        } else {
          value = UserStateError("Failed to load user data.");
        }
      } catch (e) {
        value = UserStateError("An error occurred: $e");
      }
    }
  }
}
