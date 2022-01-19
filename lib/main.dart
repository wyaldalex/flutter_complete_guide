// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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
  var questions = [
    'What is your favorite color?',
    'What is your favorite animal?',
    'What is your favorite tv show?'
  ];

  var default_questions = [
    'Red',
    'Green',
    'Yellow'
  ];

  var answers_question_color = [
    'Red',
    'Green',
    'Yellow'
  ];

    var answers_question_animal = [
    'PANDA',
    'DOG',
    'TIGER'
  ];

    var answers_question_show = [
    'GOTR',
    'FRIENDS',
    'SEX ED'
  ];

  //String answers = 'asdasdas';


  void answerQuestion() {
    setState(() {
      if (currentQuestion == (questions.length - 1)) {      
        currentQuestion = 0;
      } else {
        currentQuestion += 1;
      }

      if (currentQuestion == 0){
        default_questions = answers_question_color;
 
      } else if(currentQuestion == 1){
        default_questions = answers_question_animal;
      } else {
        default_questions = answers_question_show;
      }


    });
    print("Something printed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[currentQuestion]),
            Answer(default_questions[0], answerQuestion),
            Answer(default_questions[1], answerQuestion),
            Answer(default_questions[2], answerQuestion)

          ],
        ),
      ),
    );
  }
}
