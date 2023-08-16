import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import './result.dart';

class test1 extends StatefulWidget {
  const test1({super.key});
  

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("hello")
        ],
      ),
    );
  }
}