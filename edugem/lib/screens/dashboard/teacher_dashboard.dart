import 'package:flutter/material.dart';

class TeacherDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Add logout functionality
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome, Teacher!'),
            // Add other teacher-specific widgets
          ],
        ),
      ),
    );
  }
}
