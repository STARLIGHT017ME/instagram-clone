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
            backgroundColor: Colors.red,
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [Text("Hello")],
                ),
              );
            });
      },
    );
  }
}
