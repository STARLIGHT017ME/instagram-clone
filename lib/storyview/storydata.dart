import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramproj/storyview/Mystories/story1.dart';
import 'package:instagramproj/storyview/Mystories/story2.dart';
import 'package:instagramproj/storyview/Mystories/story3.dart';
import 'package:instagramproj/storyview/storybars.dart';

class StoryData extends StatefulWidget {
  const StoryData({super.key});

  @override
  State<StoryData> createState() => _StoryDataState();
}

class _StoryDataState extends State<StoryData> {
  int currentStoryIndex = 0;
  final List<Widget> myStories = [
    const Mystory1(),
    const Mystory2(),
    const Mystory3(),
  ];
  List<double> percentwatched = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < myStories.length; i++) {
      percentwatched.add(0);
    }
    _startwatching();
  }

  void _startwatching() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percentwatched[currentStoryIndex] + 0.01 < 1) {
          percentwatched[currentStoryIndex] += 0.01;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        myStories[currentStoryIndex],
        MystoryBars(
          percentwatched: [],
        )
      ]),
    );
  }
}
