import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
  final VoidCallback onPress;//callback for answerQuestions
  final String answerText;


   Answers(this.onPress, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 200,
        color: Colors.blue,
        child: TextButton(
          onPressed: onPress,
          child: Text(answerText, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
