import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  // Define primary and accent colors
  primaryColor: Colors.blue,
  hintColor: Color(0xFF19535F),
  // Define text theme
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    // Add more text styles as needed
  ),
  // Define the color for titles
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF230903), // Background color for the app bar
    titleTextStyle: TextStyle(
        color: Color(0xFF19535F), // Text color
        fontSize: 24,
        fontWeight: FontWeight.bold
    ),
  ),
  // Define background color for all screens
  scaffoldBackgroundColor: Color(0xFFBEA57D),
);
