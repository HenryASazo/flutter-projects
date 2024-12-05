import 'package:flutter/material.dart';
import 'contact.dart';
import 'contact_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
      name: 'Tom Brady',
      url: 'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcQRAUlLMLd1YMclwDI0c9Z0l2iZMInl9w79p07ztL8uW8BLGClipS1UwfEewdTI TApHOoBWLvfouWV2cHU',
    ),
    Contact(
      name: 'Tom Cruise',
      url: 'https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg', // Replace 'url' with actual URL
    ),
    Contact(
      name: 'Ed Sheeran',
      url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/1200px-Ed_Sheeran-6886_%28cropped%29.jpg',
    ),
    Contact(
      name: 'John Mayer',
      url: 'https://upload.wikimedia.org/wikipedia/commons/8/89/JohnMayerin2019.jpg',
    ),
    Contact(
      name: 'Elon Musk',
      url: 'https://upload.wikimedia.org/wikipedia/commons/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg',
    ),
    Contact(
      name: 'Natalie Portman',
      url: 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Natalie_Portman_%2848470988352%29_%28cropped%29.jpg',
    ),
    Contact(
      name: 'Hailee Steinfeld',
      url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Hailee_Steinfeld_by_Gage_Skidmore.jpg/1200px-Hailee_Steinfeld_by_Gage_Skidmore.jpg',
    ),
    Contact(
      name: 'Matty Healy',
      url: 'https://upload.wikimedia.org/wikipedia/commons/3/39/Matty_Healy_-_POS19_DAY1-352_%2848486586171%29.jpg',
    ),
    Contact(
      name: 'Selena Gomez',
      url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Selena_Gomez_-_Walmart_Soundcheck_Concert.jpg/170px-Selena_Gomez_-_Walmart_Soundcheck_Concert.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List Demo',
      home: ContactList(contacts: contacts),
    );
  }
}
