import 'package:flutter/material.dart';
import '../Core/AppTextStyles.dart';

class BtnExit extends StatelessWidget {
  BtnExit({Key? key, required this.title, required this.function})
      : super(key: key);

  final String title;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.elliptical(50, 50),
          topLeft: Radius.elliptical(50, 50)),
      onTap: function,
      child: Container(
        height: 50,
        width: 250,
        decoration:  BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(child: Text(title,style: textStyleBtn)),
      ),
    );
  }
}