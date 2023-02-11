import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  const InputLogin({ required this.title, required this.hintText}) ;

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 40, 10),
          child: Row(
            children: [
              Text(title),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: hintText),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
