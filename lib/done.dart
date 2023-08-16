import 'package:flutter/material.dart';
import 'package:pbl_project/page1.dart';

class done extends StatefulWidget {
  const done({super.key});

  @override
  State<done> createState() => _doneState();
}

class _doneState extends State<done> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => const page1())));
      },
      child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 233, 240, 237)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "You have Successfully Logged In",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontFamily: 'Pattaya'),
            ),
          ])),
    );
  }
}
