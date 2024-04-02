import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigationsidebar extends StatelessWidget {
  const Navigationsidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.home_outlined,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.search,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.play_circle_outline_rounded,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.favorite_border_outlined,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.camera_alt_outlined,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.messenger_outline,
            size: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/user1.jpg"),
              radius: 15,
            ),
            onTap: () {
              print("Click here");
            },
          )
        ],
      ),
    );
  }
}
