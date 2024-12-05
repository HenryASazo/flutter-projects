import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFBEA57D), // Background color
      child: Scaffold(
        appBar: AppBar(
          title: Text('Music Companion'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Learn Guitar'),
              onTap: () {
                Navigator.pushNamed(context, '/learn');
              },
            ),
            ListTile(
              title: Text('Favorite Stars'),
              onTap: () {
                Navigator.pushNamed(context, '/favorite');
              },
            ),
          ],
        ),
      ),
    );
  }
}
