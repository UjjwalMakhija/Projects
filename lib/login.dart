import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // new
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_project/login1.dart';
import 'package:provider/provider.dart'; // new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pbl_project/homepage.dart';
import 'package:pbl_project/page1.dart';
import 'package:pbl_project/done.dart';

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var name = TextEditingController();
  var mail = TextEditingController();
  var pass = TextEditingController();
  final _controller = TextEditingController();
  var st = Alignment.topLeft;
  var et = Alignment.topRight;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void dispose1() {
    name.dispose();
    super.dispose();
  }

  void dispose2() {
    mail.dispose();
    super.dispose();
  }

  void dispose3() {
    pass.dispose();
    super.dispose();
  }

  String? get _errorText {
    final text = name.value.text;

    if (text.isEmpty) {
      return "Can't be empty";
    }
    if (text.length <= 4) {
      return 'Too short';
    }

    return null;
  }

  String? get _errorText1 {
    final text = mail.value.text;

    if (text.isEmpty) {
      return "Can't be empty";
    }
    if (text.length <= 4) {
      return 'Too short';
    }
    return null;
  }

  String? get _errorText2 {
    final text = pass.value.text;

    if (text.isEmpty) {
      return "Can't be empty";
    }
    if (text.length <= 4) {
      return 'Too short';
    }
    return null;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: LinearGradient(colors: ),
        // backgroundColor: const Color.fromARGB(255, 53, 51, 51),
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 193, 212, 199),
            Color.fromARGB(255, 47, 123, 81)
          ], begin: st, end: et)),
          child: Center(
            child: Flexible(
              fit: FlexFit.loose,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 150,
                      child: Center(
                          child: Text(
                        "Moody",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 12, 12),
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Pacifico'),
                      )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(hexColor('46FFC8')),
                            Color(hexColor('1E9B76')),
                            Color(hexColor('53766B')),
                          ],
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Card(
                        shadowColor: Color.fromARGB(255, 63, 181, 81),
                        color: Color.fromARGB(255, 38, 40, 39),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Color.fromARGB(255, 22, 110, 68),
                                width: 3)),
                        child: Form(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Username",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField(
                                  onTap: () {},
                                  //controller: _controller,
                                  controller: name,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 243, 239, 239),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Colors.black87, width: 2),
                                    ),
                                    focusColor: Colors.white,
                                    hintText: "username",
                                    hintStyle: const TextStyle(
                                        color: Color.fromARGB(77, 87, 84, 84)),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    errorText: _errorText,
                                  ),
                                  onChanged: (text) => setState(() {}),
                                ),
                              ),
                            ),
                            const Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField(
                                  onTap: () {
                                    const BorderSide(color: Colors.black);
                                  },
                                  controller: mail,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Enter your email",
                                    hintStyle: const TextStyle(
                                        color: Color.fromARGB(77, 87, 84, 84)),
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    errorText: _errorText1,
                                  ),
                                  onChanged: (text) => setState(() {}),
                                ),
                              ),
                            ),
                            const Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField(
                                  onTap: () {},
                                  controller: pass,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.black87, width: 2),
                                    ),
                                    hintText: "Enter Password",
                                    hintStyle: const TextStyle(
                                        color: Color.fromARGB(77, 87, 84, 84)),
                                    hoverColor: Colors.green,
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black87,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    errorText: _errorText2,
                                  ),
                                  //  contextMenuBuilder: (context, editableTextState) {

                                  //  },
                                  onChanged: (text) => setState(() {}),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: ElevatedButton(
                                    onPressed: () async {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                              email: mail.text,
                                              password: pass.text)
                                          .then((value) => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const login()))));
                                    },
                                    style: TextButton.styleFrom(
                                        fixedSize: Size.fromHeight(40),
                                        backgroundColor:
                                            Color.fromARGB(255, 10, 230, 222),
                                        // Color.fromARGB(255, 115, 181, 149),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 10, 9, 9),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RammettoOne'),
                                    )),
                              ),
                            )
                          ],
                        ))),
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
