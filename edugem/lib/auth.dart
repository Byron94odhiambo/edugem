import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edugem/dashboard.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth.instance;
  String _email = '';
  String _password = '';
  String _role = 'parent'; // default role

  void _submitAuthForm() async {
    UserCredential userCredential;
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );

      // Retrieve user role from Firestore
      final userRole = await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user?.uid)
          .get()
          .then((doc) => doc['role']);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => DashboardScreen(userRole),
        ),
      );
    } catch (error) {
      // Handle error (e.g., show error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auth Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => _email = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) => _password = value,
            ),
            DropdownButton<String>(
              value: _role,
              items:
                  <String>['parent', 'teacher', 'student'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _role = newValue!;
                });
              },
            ),
            ElevatedButton(
              onPressed: _submitAuthForm,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
