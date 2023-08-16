import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: RiveAnimation.asset("assets/new.riv")),
    );
  }
}
