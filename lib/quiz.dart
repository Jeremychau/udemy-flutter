import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionInex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionInex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question( questions[questionInex]['questionText'] as String ),
        ...(questions[questionInex]['answers'] as List<Map<String, Object>>).map((item) {
          return Answer(() => answerQuestion(item['score']), item['text'] as String);
        }).toList()
      ],
    );
  }
}