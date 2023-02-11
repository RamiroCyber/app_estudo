import 'package:app_estudo/Components/InputLogin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(80, 80))),
              width: double.infinity,
              child: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              flex: 3,
              child: InputLogin(
                title: "username",
                hintText: "Enter your username",
              )),
        ],
      ),
    ));
  }
}
