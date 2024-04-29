import 'package:flutter/material.dart';
import 'package:instagramproj/storyview/util/progressbar.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class Mystory1 extends StatefulWidget {
  const Mystory1({super.key});

  @override
  State<Mystory1> createState() => _Mystory1State();
}

class _Mystory1State extends State<Mystory1> {
  final StoryController controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            StoryView(storyItems: [
              StoryItem.text(
                  title: "Tap \n Me",
                  textStyle: TextStyle(
                    fontSize: 30,
                  ),
                  backgroundColor: Colors.deepOrange),
              StoryItem.text(
                  title: "Hello \n  user",
                  textStyle: TextStyle(
                    fontSize: 30,
                  ),
                  backgroundColor: Colors.deepOrange),
              StoryItem.pageImage(
                  url: "images/user1.jpg", controller: controller),
              StoryItem.pageVideo(
                  "images/Isagi_Yoichi_Blue_Lock_Live_Wallpaper_0FzkzSXAoCI_299.mp4",
                  duration: Duration(minutes: 1),
                  imageFit: BoxFit.contain,
                  controller: controller)
              /*  StoryItem.pageImage(
                  url:
                      "Isagi_Yoichi_Blue_Lock_Live_Wallpaper_0FzkzSXAoCI_299.mp4",
                  controller: controller), */
            ], controller: controller),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/user1.jpg"),
                    radius: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Eren Yeager",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
