import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Quiz')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Начать тест'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const QuizScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}