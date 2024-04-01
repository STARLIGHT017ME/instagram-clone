import 'package:flutter/material.dart';

class Navigationsidebar extends StatelessWidget {
  const Navigationsidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.home,
          size: 27,
        ),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.search,
          size: 27,
        ),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.play_circle_filled_sharp,
          size: 27,
        ),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.favorite,
          size: 27,
        ),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.camera,
          size: 27,
        ),
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.message,
          size: 27,
        ),
      ],
    );
  }
}
