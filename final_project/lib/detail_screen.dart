import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
      ),
      body: ListView(
        children: [
          _buildImageWithTextPair(
            imageUrl: "https://assets-global.website-files.com/61796230edfd36b26f605bf8/65f075a954f272bc7d819c39_C-D-G-Em%20(2)%20(1).jpg",
            text: 'Learn chord progressions',
          ),
          _buildImageWithTextPair(
            imageUrl: 'https://images.ctfassets.net/r1mvpfown1y6/5PG5Lx6YvKYSqiKSi6IWYq/19729d62a5766968ec4e7ff8185c3004/FP-17029-scales-Hero.jpg',
            text: 'Master guitar scales',
          ),
          _buildImageWithTextPair(
            imageUrl: 'https://i0.wp.com/www.blitzguitar.com/wp-content/uploads/2019/01/Right-Hand-Fingering-for-fingerstyle.-P-i-ma-pattern-good.png?ssl=1',
            text: 'Explore fingerpicking techniques',
          ),
          _buildImageWithTextPair(
            imageUrl: 'https://tomasmichaud.com/wp-content/uploads/2020/07/Simple_Down-Up_Strum-1228.png',
            text: 'Improve your strumming patterns',
          ),
          _buildImageWithTextPair(
            imageUrl: 'https://cdn.schoolofrock.com/img/content-module-single/how-to-tune-a-guitar-notes1527097915.jpg',
            text: 'Standard tuning',
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithTextPair({required String imageUrl, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          imageUrl.startsWith('http')
              ? Image.network(
            imageUrl,
            height: 200, // Adjust height as needed
            width: double.infinity, // Take up full width
            fit: BoxFit.contain, // Fit the image within the container
          )
              : Image.asset(
            imageUrl,
            height: 200, // Adjust height as needed
            width: double.infinity, // Take up full width
            fit: BoxFit.contain, // Fit the image within the container
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

}