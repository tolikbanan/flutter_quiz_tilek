import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int correct;
  final int total;

  const ResultScreen({super.key, required this.correct, required this.total});

  String get feedback {
    final pct = (correct / total * 100).round();
    if (pct < 50) return 'Нужно подтянуть';
    if (pct < 80) return 'Хорошо';
    return 'Отлично';
  }

  @override
  Widget build(BuildContext context) {
    final pct = (correct / total * 100).round();

    return Scaffold(
      appBar: AppBar(title: const Text('Результат')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Правильных ответов: $correct из $total'),
            Text('Процент: $pct%'),
            Text(feedback, style: c