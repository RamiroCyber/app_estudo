import 'package:app_estudo/splash/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Login/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/login": (context) => const Login(),
        "/register": (context) => Register(),
      },
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
