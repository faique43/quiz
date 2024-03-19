import 'package:flutter/material.dart';

class ProfileData {
  final String name;
  final String imageName;
  final String phone;
  final String email;
  final bool biometric;
  final String address;

  ProfileData({
    required this.name,
    required this.imageName,
    required this.phone,
    required this.email,
    required this.biometric,
    required this.address,
  });
}

class Profile extends StatelessWidget {
  final ProfileData profileData;

  Profile({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEZRChoJDJsM8gFHzSNo2nFT5TKYqsl99S7Q&usqp=CAU', // Placeholder logo URL
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              profileData.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(profileData.phone),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(profileData.email),
            ),
            ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text(profileData.biometric
                  ? 'Biometric Enabled'
                  : 'Biometric Disabled'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(profileData.address),
            ),
          ],
        ),
      ),
    );
  }
}
