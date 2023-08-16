import 'package:pbl_project/buttons.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

import 'package:flutter/material.dart';
import 'package:pbl_project/Header.dart';
import 'package:pbl_project/login.dart';
import 'package:flutter/src/rendering/object.dart';

class semicircle extends StatefulWidget {
  const semicircle({super.key});

  @override
  State<semicircle> createState() => _semicircleState();
}

class _semicircleState extends State<semicircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      color: Color.fromARGB(255, 10, 9, 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RotatedBox(
          quarterTurns: 0,
          child: Container(
              width: 200,
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(hexColor('46FFC8')),
                    Color(hexColor('3D3E3D')),
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(260),
                      topRight: Radius.circular(260)),
                  border: Border.all(
                      width: 3, color: Colors.green, style: BorderStyle.none)),
              child: Align(alignment: Alignment.center, child: Text('asdasd'))),
        ),
      ),
    );
  }
}
