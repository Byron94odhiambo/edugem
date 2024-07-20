import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set background color to blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to EduGem AI',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white), // Set text color to white for contrast
            ),
            const SizedBox(height: 20),
            const Text(
              'Your personalized learning companion. Get started by logging in or registering an account.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white), // Set text color to white for contrast
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200, // Set a fixed width for the buttons
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200, // Set a fixed width for the buttons
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Register',
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
