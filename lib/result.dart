import 'package:flutter/material.dart';

class Result extends StatelessWidget {

final Function answerQuestion;

Result(this.answerQuestion);
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        child: Text('RESET QUIZ'),
        onPressed: answerQuestion,

      ),
    );
  }
}