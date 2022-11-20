import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questionsMap = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 0}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Cat", "score": 10},
        {"text": "Elephant", "score": 5},
        {"text": "Lion", "score": 0}
      ]
    },
    {
      "questionText": "What's your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 10},
        {"text": "Chorong", "score": 500},
        {"text": "ChoBom", "score": 1000}
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: _questionIndex < _questionsMap.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionInex: _questionIndex,
              questions: _questionsMap)
          : Result(_totalScore, _resetQuiz)
        )
      );
  }
}
