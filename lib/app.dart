import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tilek Quiz',
      home: const HomeScreen(),
    );
  }
}