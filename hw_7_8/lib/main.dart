import 'package:flutter/material.dart';
import 'user_profile_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile Demo',
      home: const UserProfileWidget(id: 5),
    );
  }
}
