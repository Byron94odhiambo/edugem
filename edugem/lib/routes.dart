import 'package:flutter/material.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/authentication/register_screen.dart';
import 'screens/dashboard/parent_dashboard.dart';
import 'screens/dashboard/teacher_dashboard.dart';
import 'screens/dashboard/student_dashboard.dart';
import 'screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const SplashScreen(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const RegisterScreen(),
  '/parent_dashboard': (context) => const ParentDashboard(),
  '/teacher_dashboard': (context) => const TeacherDashboard(),
  '/student_dashboard': (context) => const StudentDashboard(),
};
