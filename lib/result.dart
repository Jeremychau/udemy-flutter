import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHanlder;

  Result(this.resultScore, this.resetQuizHanlder);

  String get resultPhrase {
    return (resultScore <= 500)? (resultScore > 1000)? 'You are awsome and innocent!' : 'Apink' : 'You did it!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Restart Quiz!'), onPressed: resetQuizHanlder)
        ],
      )
    );
  }
}
