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

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationtime = FirebaseAuth.instance.currentUser!.metadata.creationTime;
  User? user = FirebaseAuth.instance.currentUser;
  verify() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Color.fromARGB(255, 199, 71, 20),
      content: Text(
        "Verification link has been sent to $email",
        style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 248, 242, 242),
        ),
      ),
      duration: Duration(seconds: 5),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("UID : $uid",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Created at : $creationtime",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Email : $email",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ]),
              SizedBox(
                height: 30,
              ),
              user!.emailVerified
                  ? Text(
                      "Verified  ",
                      style: TextStyle(fontSize: 20),
                    )
                  : TextButton(
                      onPressed: () {
                        verify();
                      },
                      child: Text("Verify Email ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)))
            ],
          )
        ],
      ),
    );
  }
}
