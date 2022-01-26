// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentQuestion = 0;
  var _totalScore = 0;

  static const questionsListMap = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'answerText': 'Red', 'answerPoints': 10},
        {'answerText': 'Green', 'answerPoints': 1},
        {'answerText': 'Yellow', 'answerPoints': 5}
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'answerText': 'TIGER', 'answerPoints': 10},
        {'answerText': 'Hamster', 'answerPoints': 1},
        {'answerText': 'Panda', 'answerPoints': 5}
      ]
    },
    {
      'questionText': 'What is your favorite tv show?',
      'answers': [
        {'answerText': 'GOT', 'answerPoints': 10},
        {'answerText': 'Nip Tuck', 'answerPoints': 8},
        {'answerText': 'Sesame Street', 'answerPoints': 1},
        {'answerText': 'SEX ED', 'answerPoints': 5}
      ]
    }
  ];

  void _resetQuiz(){
    setState(() {
      _totalScore =0;
      currentQuestion=0;
    });
  }

  var questions = [
    'What is your favorite color?',
    'What is your favorite animal?',
    'What is your favorite tv show?'
  ];

  var default_questions = ['Red', 'Green', 'Yellow'];

  var answers_question_color = ['Red', 'Green', 'Yellow'];

  var answers_question_animal = ['PANDA', 'DOG', 'TIGER'];

  var answers_question_show = ['GOTR', 'FRIENDS', 'SEX ED', 'LAW & ORDER'];

  //String answers = 'asdasdas';

  void answerQuestion(int score) {

     _totalScore += score;

    setState(() {
        currentQuestion += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: currentQuestion < questions.length
            ? Quiz(
                questions: questionsListMap,
                questionIndex: currentQuestion,
                answerQuestion: answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
