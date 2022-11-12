import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animarl?"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My App')),
          body: Column(
            children: [
              Text(questions[_questionIndex]),
              ElevatedButton(
                onPressed: _answerQuestion, child: Question('Answer 1')
              ),
              ElevatedButton(
                onPressed: _answerQuestion, child: Text('Answer 2')
              ),
              ElevatedButton(
                onPressed: _answerQuestion, child: Text('Answer 3')
              )
            ],
          )),
    );
  }
}
