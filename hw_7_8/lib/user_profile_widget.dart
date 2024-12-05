import 'package:flutter/material.dart';
import 'HttpUserDependency.dart';
import 'user_value_notifier.dart';
import 'user_state.dart';

class UserProfileWidget extends StatefulWidget {
  final int id;

  const UserProfileWidget({required this.id});

  @override
  _UserProfileWidgetState createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late final UserValueNotifier _userValueNotifier;

  @override
  void initState() {
    _userValueNotifier = UserValueNotifier(
      userId: widget.id,
      dependency: HttpUserDependency(),
    );
    _userValueNotifier.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile #${widget.id}'),
      ),
      body: Center(
        child: ValueListenableBuilder<UserState>(
          valueListenable: _userValueNotifier,
          builder: (context, state, _) {
            if (state is UserStateLoading) {
              return CircularProgressIndicator();
            } else if (state is UserStateError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error: ${state.errorMessage}'),
                  ElevatedButton(
                    onPressed: () {
                      _userValueNotifier.load(); // Load data on button press
                    },
                    child: Text('Retry'),
                  ),
                ],
              );
            } else if (state is UserStateLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello: ${state.firstName} ${state.lastName}'),
                  Text('${state.email}'),
                  Text(' ${state.avatar}'),
                ],
              );
            } else {
              return SizedBox(); // Handle other states if needed
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Do nothing if data is already loaded
        },
        child: Icon(Icons.download),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
