import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Components/BtnLogin.dart';
import '../Components/InputLogin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController identificationNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              height: size * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(80, 80),
                ),
              ),
              child: Column(children: [
                Expanded(
                  child: Transform.scale(
                      scale: 0.5, child: SvgPicture.asset('assets/cash.svg')),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: const Text('Register', style: TextStyle(fontSize: 35)),
                )
              ]),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  InputLogin(
                    controller: email,
                    title: "Email :",
                    hintText: "Enter your username",
                  ),
                  InputLogin(
                    controller: password,
                    title: "Password :",
                    hintText: "Enter your password",
                  ),
                  InputLogin(
                    controller: confirmPassword,
                    title: "Confirm Password :",
                    hintText: "Confirm your password",
                  ),
                  InputLogin(
                    controller: location,
                    title: "Location :",
                    hintText: "Enter your Location",
                  ),
                  InputLogin(
                    controller: identificationNumber,
                    title: "Identification Number :",
                    hintText: "Enter your INumber",
                  ),
                  const SizedBox(height: 20),
                  BtnLogin(title: "Register", function: () {}),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: const BackButton(),
          ),
        ]),
      ),
    );
  }
}
