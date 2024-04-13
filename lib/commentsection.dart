import 'dart:ui';

import 'package:flutter/material.dart';

class Commentsection extends StatelessWidget {
  const Commentsection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 7),
          child: Text(
            "view all 2355 comments",
            style: TextStyle(color: Colors.white38),
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet(
            backgroundColor: const Color.fromARGB(255, 7, 7, 7),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              double screenWidth = MediaQuery.of(context).size.width;

              return SizedBox(
                height: 850,
                width: screenWidth * 5.8,
                child: Column(
                  children: [
                    Text(
                      "HEIGHT: " +
                          MediaQuery.of(context).size.height.toString(),
                    ),
                    Text(
                      "Width: " + MediaQuery.of(context).size.width.toString(),
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
