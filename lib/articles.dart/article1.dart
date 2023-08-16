import 'Articlemodel.dart';
import 'art.dart';
import 'package:flutter/material.dart';

class article1 extends StatefulWidget {
  const article1({super.key});

  @override
  State<article1> createState() => _article1State();
}

class _article1State extends State<article1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Hello there",
        textAlign: TextAlign.center,),
      ),
      body: Container(
        
      ),
    );
  }
}