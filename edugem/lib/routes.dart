import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/authentication/signup_screen.dart';
import 'screens/dashboard/parent_dashboard.dart';
import 'screens/dashboard/teacher_dashboard.dart';
import 'screens/dashboard/student_dashboard.dart';
import 'screens/book/book_list_screen.dart';
import 'screens/book/book_detail_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  '/login': (context) => LoginScreen(),
  '/signup': (context) => SignupScreen(),
  '/parent_dashboard': (context) => ParentDashboard(),
  '/teacher_dashboard': (context) => TeacherDashboard(),
  '/student_dashboard': (context) => StudentDashboard(),
  '/book_list': (context) => BookListScreen(),
  '/book_detail': (context) => BookDetailScreen(),
};
