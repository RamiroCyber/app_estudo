import 'package:flutter/material.dart';

import '../Core/AppTextStyles.dart';

class BtnLogin extends StatelessWidget {
  BtnLogin({Key? key, required this.title, required this.function})
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
        width: 200,
        decoration: const BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(50, 50),
                topLeft: Radius.elliptical(50, 50),
                topRight: Radius.elliptical(5, 5),
                bottomLeft: Radius.elliptical(5, 5))),
        child: Center(child: Text(title,style: textStyleBtn)),
      ),
    );
  }
}
