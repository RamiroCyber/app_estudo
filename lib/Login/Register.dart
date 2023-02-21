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
              color: Colors.tealAccent,
              child: Column(children: [
                Image.asset('imagem aqui'),
                SizedBox(height: 20),
                Text('Register',style: ,)
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
