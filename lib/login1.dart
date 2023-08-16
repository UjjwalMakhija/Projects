import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // new
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_project/login.dart';
import 'package:pbl_project/resetpass.dart';
import 'package:provider/provider.dart'; // new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pbl_project/homepage.dart';
import 'package:pbl_project/page1.dart';
import 'package:pbl_project/done.dart';
import 'resetpass.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();
  userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: mail.text, password: password.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Color.fromARGB(255, 51, 150, 32),
        content: Text(
          "wohooo! Loged in ",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 248, 242, 242),
          ),
        ),
        duration: Duration(seconds: 7),
      ));

      Navigator.push(context, MaterialPageRoute(builder: (context) => done()));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Color.fromARGB(255, 229, 33, 33),
          content: Text(
            "No user found for that email/password Try correcting it ",
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
          "Login",
          style: TextStyle(
              color: Colors.black, fontSize: 40, fontFamily: 'Pattaya'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: mail,
                          decoration: InputDecoration(
                              labelText: 'E-Mail',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              hintText: "Enter your e-mail address",
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black,
                              )),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintText: "Enter your password",
                            border: UnderlineInputBorder(
                                // borderRadius: BorderRadius.circular(20)
                                ),
                            // enabledBorder: InputBorder.none
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                          ),
                          obscureText: true,
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          userLogin();
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.lightGreenAccent[700],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Signin",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => resetpass()));
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ))
              ]))
        ],
      ),
    );
  }
}
