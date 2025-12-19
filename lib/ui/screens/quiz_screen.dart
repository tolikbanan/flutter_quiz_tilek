import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/quiz_viewmodel.dart';
import '../../data/quiz_repository.dart';
import 'result_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizViewModel(QuizRepository())..load(),
      child: Consumer<QuizViewModel>(
        builder: (context, vm, _) {
          if (vm.questions.isEmpty) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (vm.index >= vm.questions.length) {
            return ResultScreen(correct: vm.correct, total: vm.questions.length);
          }

          final q = vm.questions[vm.index];

          return Scaffold(
            appBar: AppBar(
              title: Text('Вопрос ${vm.index + 1} из ${vm.questions.length}'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.a