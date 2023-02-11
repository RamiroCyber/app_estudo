import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    duration();
    super.initState();
  }

  duration() {
    return Timer(
        const Duration(seconds: 3), (() => Navigator.of(context).pushReplacementNamed('/login')));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
      child: Container(child: const Icon(Icons.monetization_on_outlined)),
    );
  }
}
