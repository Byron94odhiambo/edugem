import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(EduGemApp());
}

class EduGemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduGem',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
