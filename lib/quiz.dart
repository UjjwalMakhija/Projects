// import 'dart:html';

// import 'dart:ffi';

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  // const Quiz({super.key});

  final List<Map<String, Object>> question;
  final Function(int) answerQuestion;
  final int questionIndex;
  const Quiz(
      {required this.question,
      required this.answerQuestion,
      // answerQuestion='score',
      required this.questionIndex});
  // answer='score';

  @override
  Widget build(BuildContext context) {
    
        return Column(
      children: [
        Question(
          question[questionIndex]['questiontext'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']as int), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
