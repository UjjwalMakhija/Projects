import 'package:flutter/material.dart';

// These is the creation of custom widget which can be used in main file these take constructor and value is being assigned using cunstructor
class Question extends StatelessWidget {
  final String textvalue;
  const Question(this.textvalue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // These enable the app to take the maximum of the device space
      margin:const EdgeInsets.all(10),
     

      child: Text(
        textvalue,
        style: const TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 18, 16, 16),
        fontFamily: "Pattaya"
        
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
