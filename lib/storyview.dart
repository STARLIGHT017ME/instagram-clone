import 'package:flutter/material.dart';

class Storyview extends StatelessWidget {
  const Storyview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.orange,
                    Colors.purple,
                    Colors.pink,
                    Colors.yellow
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 45,
                    child: Container(
                      height: 67,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("images/shoe4.jpg"))),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15)
            ],
          );
        },
      ),
    );
  }
}
