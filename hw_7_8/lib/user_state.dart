// user_state.dart

// Abstract base class for user states
abstract class UserState {}

// Represents the loading state while fetching user data
class UserStateLoading extends UserState {}

// Represents the error state when user data retrieval fails
class UserStateError extends UserState {
  final String errorMessage;

  UserStateError(this.errorMessage);
}

// Represents the loaded state with user data successfully retrieved
class UserStateLoaded extends UserState {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;

  UserStateLoaded({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });
}
