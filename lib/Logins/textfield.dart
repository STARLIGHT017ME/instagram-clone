import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String label;
  final bool obscureText;

  const Mytextfield(
      {super.key, required this.label, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(28, 42, 51, 1),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        floatingLabelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54, width: 0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        label: Text(label),
        labelStyle: TextStyle(color: Colors.white12, fontSize: 15),
      ),
    );
  }
}
