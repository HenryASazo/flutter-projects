import 'package:flutter/material.dart';
import 'phone_switcher.dart'; // Importing the PhoneSwitcher widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Switcher Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black , // Change app bar color according to your preference
          titleTextStyle: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 20.0, // Adjust font size if needed
          ),
        ),
      ),
      home: PhoneSwitcher(), // Call the PhoneSwitcher widget
    );
  }
}
