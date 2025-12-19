import 'package:flutter/material.dart';
import '../data/quiz_repository.dart';
import '../models/question_model.dart';

class QuizViewModel extends ChangeNotifier {
  final QuizRepository repository;

  QuizViewModel(this.repository);

  List<Question> questions = [];
  int index = 0;
  int? selected;
  int correct = 0;

  Future<void> load() async {
    questions = await repository.loadQuestions();
    index = 0;
    correct = 0;
    selected = null;
    notifyListeners();
  }

  void select(int i) {
    selected = i;
    notifyListeners();
  }

  void next() {
    if (selected == questions[index].correctIndex) correct++;
    index++;
    selected = null;
    notifyListeners();
  }
}