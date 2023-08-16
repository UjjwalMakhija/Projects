import 'dart:ui';
import './result1.dart';
import './result_2.dart';
import './result.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});
  var resultScore;
  final VoidCallback reseQuiz;
  // void score(){
  //   print(resultScore);
  // }
  Result({super.key,required this.resultScore, required this.reseQuiz});
  // String get Result_P {
  //   String Result_ph;
  // //   if (resultScore < 8) {

  // //     Result_ph = 'You are Awesome';
  // //   } else if (resultScore < 12) {
  // //     Result_ph = 'You are Okay ';
  // //   } else {
  // //     Result_ph = 'OKOKOK.......';
  // //   }
  // //   return Result_ph;
  // // }

  @override
  Widget build(BuildContext context) {
    return resultScore < 14 ? result1() : result_2();
    // return Center(
    //     child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text(
    //       Result_P,
    //       style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    //       textAlign: TextAlign.center,
    //     ),
    //     // score
    //     ElevatedButton(
    //          onPressed: reseQuiz,

    //         child: Text("Tap to restart the test !"),
    //         style: ElevatedButton.styleFrom(

    //             backgroundColor: Color.fromARGB(255, 11, 15, 14), textStyle: TextStyle(color: Color.fromARGB(255, 165, 201, 207))))
    //   ],
    // )));
  }
}
