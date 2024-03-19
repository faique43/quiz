import 'package:flutter/material.dart';
import 'package:helloworld/screens/profile.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false, // Remember Me checkbox value
                      onChanged: (bool? value) {
                        // Implement Remember Me functionality
                      },
                    ),
                    Text('Remember Me'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Implement Forget Password functionality
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to profile screen and pass data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(
                      profileData: ProfileData(
                        name: 'Faique Ahmad Khan',
                        imageName: 'ME.jpg',
                        phone: '03336118864',
                        email: 'faiqueahmadkhan@gmail.com',
                        biometric: false,
                        address: 'NUST H-12, Islamabad',
                      ),
                    ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
