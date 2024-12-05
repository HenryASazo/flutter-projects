// user_dependency.dart

// Abstract class defining the interface for user data dependency
import 'package:hw_7_8/user_model.dart';

abstract class UserDependency {
  Future<User?> getUser(int id);
}
