import 'package:flutter/material.dart';
import 'package:untitled/quiz_app/questions.dart';
import 'package:untitled/quiz_app/result.dart';

import 'answers.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final questions = const[
    {
      'questionText': 'What\'s your favourite book?',
      'answers': [
        {'text': 'Fiction', 'score': 1},
        {'text': 'Horror', 'score': 2},
        {'text': 'Classic', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 9},
        {'text': 'Orange', 'score': 1},
        {'text': 'Black', 'score': 1}
      ]
    },
    {
      'questionText': 'Who is your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2},
        {'text': 'John', 'score': 1}
      ]
    }
  ];
  void _resetQuiz() { //to restart the quiz
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  _answerQuestions(int score) { //for questionIndex  and total score calculation
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex <= questions.length) {
      print('more questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: _questionIndex < questions.length
            ? Column(
          children: [
            Questions(
                questions[_questionIndex]['questionText'].toString()),
            const SizedBox(
              height: 10,
            ),
            ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              // print(answer['text']);
              // print(answer['score']);

              return Answers(() => _answerQuestions(answer['score'] as int ) , answer['text'].toString());
            }).toList()
          ],
        )
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz,  ),//reset Quiz using callback resetHandler
      ),
    );
  }
}



