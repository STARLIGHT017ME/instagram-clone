import 'package:flutter/material.dart';
import 'package:instagramproj/storyview/Mystories/story1.dart';
import 'package:instagramproj/storyview/Mystories/story2.dart';
import 'package:instagramproj/storyview/Mystories/story3.dart';
import 'package:instagramproj/storyview/util/progressbar.dart';

class MystoryBars extends StatelessWidget {
  List<Widget> percentwatched = [Mystory1(), Mystory2(), Mystory3()];

  MystoryBars({required this.percentwatched});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: Row(
        children: [
          Expanded(
            child: MyprogressBar(
              percentwatched: 0,
            ),
          ),
          Expanded(
            child: MyprogressBar(
              percentwatched: 0,
            ),
          ),
          Expanded(
            child: MyprogressBar(
              percentwatched: 0,
            ),
          ),
        ],
      ),
    );
  }
}
