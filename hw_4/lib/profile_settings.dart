import 'package:flutter/material.dart';
import 'profile.dart';
import 'profile_value_notifier.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  late ProfileValueNotifier _profileValueNotifier;

  @override
  void initState() {
    super.initState();
    _profileValueNotifier = ProfileValueNotifier();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800], // Set general background color to dark grey
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Profile Settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16.0), // Add padding around the container
                decoration: BoxDecoration(
                  color: Colors.white, // Set background color to white
                  borderRadius: BorderRadius.circular(15), // Add border radius
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        icon: Icon(Icons.person),
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.updateProfile(firstName: value);
                      },
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        icon: Icon(Icons.person),
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.updateProfile(lastName: value);
                      },
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Image URL',
                        icon: Icon(Icons.image),
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.updateProfile(imageUrl: value);
                      },
                    ),
                    SizedBox(height: 20),
                    ValueListenableBuilder<Profile>(
                      valueListenable: _profileValueNotifier,
                      builder: (context, profile, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (profile.firstName.isNotEmpty &&
                                profile.lastName.isNotEmpty)
                              Text(
                                'Hello, I am ${profile.firstName} ${profile.lastName}!',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            else
                              Text(
                                'You do not have a full name!',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            SizedBox(height: 20),
                            if (profile.imageUrl.isNotEmpty)
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Image.network(
                                    profile.imageUrl,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
