import 'package:app_estudo/Components/BtnLogin.dart';
import 'package:app_estudo/Components/InputLogin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

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
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  InputLogin(
                    controller: username,
                    title: "Username :",
                    hintText: "Enter your username",
                  ),
                  InputLogin(
                    controller: password,
                    title: "Password :",
                    hintText: "Enter your password",
                  ),
                  const SizedBox(height: 20),
                  BtnLogin(title: "Login",function: (){
                  },)
                ],
              )),
        ],
      ),
    ));
  }
}
