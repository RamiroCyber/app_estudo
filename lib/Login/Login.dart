import 'package:app_estudo/Components/BtnLogin.dart';
import 'package:app_estudo/Components/InputLogin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    var size = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: size * 0.3,
              decoration: const BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(80, 80))),
              width: double.infinity,
              child: Transform.scale(
                  scale: 0.5, child: SvgPicture.asset('assets/cash.svg')),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 2,
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
                const SizedBox(height: 80),
                BtnLogin(title: "Login", function: () {}),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Don't have an account ? ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[850])),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed("/register");
                          },
                        text: "Register Now",
                        style: TextStyle(
                            fontSize: 14, color: Colors.orangeAccent[700])),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
