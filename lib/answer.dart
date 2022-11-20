import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
      )
    );
  }
}