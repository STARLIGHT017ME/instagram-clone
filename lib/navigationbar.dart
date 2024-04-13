import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Appsidenavigation extends StatefulWidget {
  const Appsidenavigation({super.key});

  @override
  State<Appsidenavigation> createState() => _AppsidenavigationState();
}

class _AppsidenavigationState extends State<Appsidenavigation> {
  int filter = 0;
  int filters = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /* Home */
          GestureDetector(
            onTap: () {
              setState(() {
                filter = filter;
              });
              print("Home button");
            },
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: filter == filter ? Colors.white : Colors.blueGrey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          /* Search  */
          GestureDetector(
            onTap: () {
              print("Search");
            },
            child: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          /* Play */
          GestureDetector(
            onTap: () {
              print("Play");
            },
            child: const Icon(
              Icons.play_circle_outline_rounded,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          /* Favorite */
          GestureDetector(
            onTap: () {
              print("Favorite");
            },
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          /* Camera */
          GestureDetector(
            onTap: () {
              print("Camera");
            },
            child: const Icon(
              Icons.camera_alt_outlined,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          /* Messenger */
          GestureDetector(
            onTap: () {
              print("Messanger");
            },
            child: const Icon(
              Icons.messenger_outline,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/user1.jpg"),
              backgroundColor: Colors.amberAccent,
              radius: 30,
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
