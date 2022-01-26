import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = 'You are of a soft mind';
    } else if (resultScore <= 7) {
      resultText = 'Normal Evil';
    } else if (resultScore >= 8) {
      resultText = 'Psychopath'; 
    }
    return resultText;
  }

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text('RESET QUIZ'),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
