import 'package:flutter/material.dart';

class CommonDashboardWidgets {
  static Widget logoutButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.logout),
      onPressed: () {
        // Add logout functionality
      },
    );
  }

  static Widget welcomeText(String userRole) {
    return Text('Welcome, $userRole!');
  }

  // Add other common widgets used across dashboards
}
