import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'package:edugem/screens/authentication/login_screen.dart';
import 'package:edugem/screens/authentication/register_screen.dart';
import 'package:edugem/screens/dashboard/dashboard.dart';

void main() {
  runApp(const EduGemApp());
}

class EduGemApp extends StatelessWidget {
  const EduGemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduGem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
