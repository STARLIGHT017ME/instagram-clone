import 'package:flutter/material.dart';
import 'package:instagramproj/storyview/storydata.dart';
import 'package:instagramproj/storyview/storydesign.dart';

class Storyview extends StatefulWidget {
  const Storyview({super.key});

  @override
  State<Storyview> createState() => _StoryviewState();
}

class _StoryviewState extends State<Storyview> {
  void _openstory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StoryData()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Storydesign();
        },
      ),
    );
  }
}
