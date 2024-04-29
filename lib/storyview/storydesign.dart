import 'package:animated_dashed_circle/animated_dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/storyview/Mystories/story1.dart';
import 'package:instagramproj/storyview/storyview.dart';
import 'package:instagramproj/storyview/storyviewers.dart';

class Storydesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            AnimatedDashedCircle().playCircle();
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Mystory1();
              },
            ));
            AnimatedDashedCircle().stopCircle();
            // Call the function to navigate to StoryData
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.purple,
                    Colors.pink,
                    Colors.yellow
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: AnimatedDashedCircle().show(
                  image: const AssetImage("images/gojo .png"),
                  autoPlay: true,
                  duration: Duration(seconds: 2),
                  borderWidth: 7),
            ),
          ),
        ),
      ],
    );
  }
}
