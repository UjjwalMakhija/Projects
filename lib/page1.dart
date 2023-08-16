
import 'package:pbl_project/buttons.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

import 'package:flutter/material.dart';
import 'package:pbl_project/Header.dart';
import 'package:pbl_project/login.dart';
import 'package:flutter/src/rendering/object.dart';

Color primarycolor =const  Color(0x1E9B76);

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    // Widget bigCircle =  Container(
    //   width: 500.0,
    //   height: 500.0,
    //   decoration:  BoxDecoration(
    //     gradient: LinearGradient(colors: [
    //       Color(hexColor('46FFC8')),
    //       Color(hexColor('FFFFFF')),
    //     ]),
    //     shape: BoxShape.circle,
    //   ),
    // );
    return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          // right: 12,
          // left: 12,
          // bottom: 16,
        ),
        child: Container(
            decoration: BoxDecoration(
              border:  Border.all(color: const Color.fromARGB(255, 31, 26, 26)),
              color: const Color.fromARGB(255, 20, 19, 19),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              Stack(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: RotatedBox(
                    quarterTurns: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Container(
                          width: 250,
                          height: 450,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(hexColor('878987')),
                                Color(hexColor('46FFC8')),
                              ]),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(270),
                                topRight: Radius.circular(270),
                                topLeft: Radius.circular(10),
                              ),
                              border: Border.all(
                                  width: 3,
                                  color: Colors.green,
                                  style: BorderStyle.none)),
                          child: const Align(
                              alignment: Alignment.center,
                              child:  Text(
                                'Take Task',
                                style:  TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color.fromRGBO(15, 14, 14, 1),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Monoton',
                                    fontSize: 50),
                              )
                              )
                              ),
                    ),
                  ),
                ),
               const Buttons()
              ])
            ])
            // SizedBox(
            //   height: 3,
            // ),

            // Padding(
            //   padding: const EdgeInsets.all(0.5),
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: Container(
            //       height: 100,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Color(hexColor('46FFC8')),
            //             Color(hexColor('FFFFFF')),
            //             Color(hexColor('53766B')),
            //           ],
            //         ),
            //         shape: BoxShape.circle,
            //       ),
            //     ),
            //   ),
            // ),

            ));
  }
}
