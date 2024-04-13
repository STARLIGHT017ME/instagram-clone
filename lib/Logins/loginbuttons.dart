import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  final String text;
  final Color style;
  final Color sidecolor;
  final Color backgroundcolor;
  const Loginbutton(
      {super.key,
      required this.text,
      required this.style,
      required this.sidecolor,
      required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: MaterialStatePropertyAll(BorderSide(color: sidecolor)),
        fixedSize: MaterialStatePropertyAll(Size(770, 10)),
        backgroundColor: MaterialStatePropertyAll(backgroundcolor),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: style),
      ),
    );
  }
}
