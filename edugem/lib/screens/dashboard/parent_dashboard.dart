import 'package:flutter/material.dart';

class ParentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Dashboard'),
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
            Text('Welcome, Parent!'),
            // Add other parent-specific widgets
          ],
        ),
      ),
    );
  }
}
