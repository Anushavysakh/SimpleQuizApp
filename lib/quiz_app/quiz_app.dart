import 'package:flutter/material.dart';
import 'package:untitled/quiz_app/questions.dart';

import 'answers.dart';


class QuizApp extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion; // quiz score

  const QuizApp({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
