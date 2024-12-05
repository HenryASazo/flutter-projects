import 'package:flutter/material.dart';

class UserIntroduction extends StatelessWidget {
  final String name;
  final String introduction;

  UserIntroduction({required this.name, required this.introduction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          Text(
            introduction,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}


class UserIntroductions extends StatefulWidget {
  final List<String> names;
  final List<String> introductions;

  UserIntroductions({required this.names, required this.introductions});

  @override
  _UserIntroductionsState createState() => _UserIntroductionsState();
}

class _UserIntroductionsState extends State<UserIntroductions> {
  int currentIndex = 0;

  void _nextUser() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.names.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _nextUser,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.names[currentIndex]}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text('${widget
                  .introductions[currentIndex]}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


