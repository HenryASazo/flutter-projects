import 'package:flutter/material.dart';
import 'user_introduction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserIntroductions(
        names: [
          'Alice',
          'Bob',
          'Charlie',
          'Diana',
          'Eve',
        ],
        introductions: [
          'I love coding!',
          'I enjoy reading books.',
          'I am a music enthusiast.',
          'I love outdoor adventures.',
          'I am passionate about art.',
        ],
      ),
    );
  }
}
