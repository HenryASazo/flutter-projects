import 'package:flutter/material.dart';
import 'profile_settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Settings Demo',
      home: ProfileSettings(),
    );
  }
}
