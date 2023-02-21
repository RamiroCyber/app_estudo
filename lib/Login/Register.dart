import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(80, 80),
                ),
              ),
              child: Column(children: [
                Image.asset('imagem aqui'),
                const SizedBox(height: 20),
                const Text('Register', style: TextStyle(fontSize: 35))
              ]),
            ),
          ),
          SizedBox(height: 30)
        ]),
      ),
    );
  }
}
