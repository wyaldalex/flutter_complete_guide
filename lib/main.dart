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

  static const questionsListMap = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Red', 'Green', 'Yellow']
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['PANDA', 'DOG', 'TIGER']
    },
    {
      'questionText': 'What is your favorite tv show?',
      'answers': ['GOTR', 'FRIENDS', 'SEX ED', 'LAW & ORDER']
    }
  ];

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

  void answerQuestion() {
    setState(() {
      if (currentQuestion == (questions.length - 1)) {
        currentQuestion = 0;
      } else {
        currentQuestion += 1;
      }

      if (currentQuestion == 0) {
        default_questions = answers_question_color;
      } else if (currentQuestion == 1) {
        default_questions = answers_question_animal;
      } else {
        default_questions = answers_question_show;
      }
    });
    print("Something printed");
  }

  void answerQuestionListMap() {
    setState(() {
      if (currentQuestion <= questionsListMap.length -1) {
        currentQuestion += 1;
      } else {
        currentQuestion = 0;
      }
      
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
                answerQuestion: answerQuestionListMap)
            : Result(answerQuestionListMap),
      ),
    );
  }
}
