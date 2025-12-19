import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/question_model.dart';

class QuizRepository {
  Future<List<Question>> loadQuestions() async {
    final data = await rootBundle.loadString('assets/questions.json');
    final list = json.decode(data) as List;
    return list.map((e) => Question.fromJson(e)).toList();
  }
}