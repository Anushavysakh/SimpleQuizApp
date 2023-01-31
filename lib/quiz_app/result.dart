import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler; //callback for resetQuiz

  const Result({
    Key? key,
    required this.resultScore,
    required this.resetHandler,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore < 8) {
      resultText = 'You Failed';
    } else if (resultScore > 8) {
      resultText = 'Passed!';
    } else {
      resultText = 'Try again';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Score:" + resultScore.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: resetHandler,
              child: const Text(
                'Restart Quiz!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
