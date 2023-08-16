import 'package:flutter/material.dart';
class Images extends StatefulWidget {
   Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      Image.asset("images/login.png")
    ],
   );
  }
}
//C:\Users\Ujjwal\Documents\projects\pbl_project\assets\images\login.png