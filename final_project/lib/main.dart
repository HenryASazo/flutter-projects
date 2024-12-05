import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'detail_screen.dart';
import 'theme.dart';
import 'practice_screen.dart';

void main() {
  runApp(GuitarCompanionApp());
}

class GuitarCompanionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Music Companion',
        theme: customTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/learn': (context) => DetailScreen(),
          '/favorite': (context) => PracticeScreen(),
        },
      ),
    );
  }
}
