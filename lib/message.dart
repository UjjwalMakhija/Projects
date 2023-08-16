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
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  String notificatuion = "this is the message";
  @override
  void initState() {
    super.initState();

    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        setState(() {
          notificatuion =
              "${event.notification!.title} ${event.notification!.body} I am coming from Terminated state";
        });
      }
    });
    FirebaseMessaging.onMessage.listen((event) {
      setState(() {
        notificatuion =
            "${event.notification!.title} ${event.notification!.body} I am coming from forground";
      });
    });
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      setState(() {
        notificatuion =
            "${event.notification!.title} ${event.notification!.body} I am coming from background";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app bar"),
      ),
      body: Center(
        child: Text(
          notificatuion,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
