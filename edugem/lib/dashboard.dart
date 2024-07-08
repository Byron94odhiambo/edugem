import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String role;

  DashboardScreen(this.role);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$role Dashboard')),
      body: Center(
        child: role == 'parent'
            ? ParentDashboard()
            : role == 'teacher'
                ? TeacherDashboard()
                : StudentDashboard(),
      ),
    );
  }
}

class ParentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Parent Dashboard'));
  }
}

class TeacherDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Teacher Dashboard'));
  }
}

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Student Dashboard'));
  }
}
