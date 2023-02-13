import 'package:flutter/material.dart';
import '../Core/AppTextStyles.dart';

class InputLogin extends StatelessWidget {
  const InputLogin({ required this.title, required this.hintText, required this.controller}) ;

  final TextEditingController controller;
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: Row(
            children: [
              Text(title, style: textStyle16400Black),
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
                            offset: Offset(0, 7))
                      ]),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
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
