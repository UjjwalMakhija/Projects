import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});

  final VoidCallback statehandler;
  final String answerText;

  const Answer(this.statehandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient:  LinearGradient(colors:[Color.fromARGB(255, 193, 212, 199),Color.fromARGB(255, 47, 123, 81)],begin: Alignment.topLeft,end:Alignment.bottomRight )
      // ),
      width: double.infinity,

      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
       
          // decoration:BoxDecoration(
          //   color: Color.fromARGB(255, 15, 15, 15),
          //   shape: BoxShape.rectangle,
            
          // ),
           ElevatedButton(

            child: Text(answerText,
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 243, 243), fontSize: 20)),
            style: ElevatedButton.styleFrom(
              // elevation: 1,
                backgroundColor: Color.fromARGB(255, 19, 15, 19),
                textStyle:
                    const TextStyle(color: Color.fromARGB(255, 18, 12, 12))),
            onPressed: statehandler,
          ),
        
      ]),
    );
  }
}
