import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  final String text;
  final Color style;
  final Color sidecolor;
  final Color backgroundcolor;
  final String routeName;
  const Loginbutton(
      {super.key,
      required this.text,
      required this.style,
      required this.sidecolor,
      required this.routeName,
      required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: MaterialStatePropertyAll(BorderSide(color: sidecolor)),
        fixedSize: const MaterialStatePropertyAll(Size(770, 10)),
        backgroundColor: MaterialStatePropertyAll(backgroundcolor),
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(
        text,
        style: TextStyle(color: style),
      ),
    );
  }
}
