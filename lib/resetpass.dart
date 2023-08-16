import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // new
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_project/login.dart';
import 'package:pbl_project/login1.dart';
import 'package:provider/provider.dart'; // new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pbl_project/homepage.dart';
import 'package:pbl_project/page1.dart';
import 'package:pbl_project/done.dart';

class resetpass extends StatefulWidget {
  const resetpass({super.key});

  @override
  State<resetpass> createState() => _resetpassState();
}

class _resetpassState extends State<resetpass> {
  TextEditingController mail = TextEditingController();
  resetpass() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: mail.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Color.fromARGB(255, 51, 150, 32),
        content: Text(
          "Paasword email link has been sent ",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 248, 242, 242),
          ),
        ),
        duration: Duration(seconds: 7),
      ));
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Color.fromARGB(255, 229, 33, 33),
          content: Text(
            "No user found for that email Try correcting it ",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 248, 242, 242),
            ),
          ),
          duration: Duration(seconds: 5),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Reset Password ",
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontFamily: 'Pattaya'),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Stack(children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/green-curve-abstract-background_53876-99569.jpg?w=2000"),
                fit: BoxFit.cover,
              ),
            )),
          ),
          Container(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: mail,
                  decoration: InputDecoration(
                      labelText: 'E-Mail',
                      hintText: "Enter your e-mail address",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.black,
                      )),
                      floatingLabelAlignment: FloatingLabelAlignment.center),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  resetpass();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: Text("Receive E-Mail",
                style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),))
          ]))
        ]));
  }
}
