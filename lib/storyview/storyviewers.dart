
/* 
import 'package:animated_dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/storyview/storyview.dart';
import 'package:instagramproj/storyview/storyviewers.dart';

class Storydesign extends StatefulWidget {
  @override
  State<Storydesign> createState() => _StorydesignState();
}

class _StorydesignState extends State<Storydesign>
    with TickerProviderStateMixin {
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));

    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);

    reverse = Tween<double>(begin: 0.0, end: -10).animate(base);

    gap = Tween<double>(begin: 15.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
        controller.forward();
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: RotationTransition(
                      turns: base,
                      child: DashedCircle(
                        dashes: 40,
                        color: Colors.deepOrangeAccent,
                        gapSize: gap.value,
                        child: RotationTransition(
                          turns: reverse,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("images/gojo .png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
/*   colors: [
                  Colors.orange,
                  Colors.purple,
                  Colors.pink,
                  Colors.yellow
                ],
               */
/*  */
/*  */
 */




/* import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Storyviews extends StatefulWidget {
/*   Image userstory;
 */
  Storyviews({super.key /* , required this.userstory */});

  @override
  State<Storyviews> createState() => _StoryviewsState();
}

class _StoryviewsState extends State<Storyviews> {
  double percent = 0.0;
  Timer _timer;
  void starttimer() {
    _timer = Timer.periodic(Duration(microseconds: 5), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        } else {}
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/shoe1.jpg"), fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 36, horizontal: 8),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: percent,
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/shoe3.jpg"),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "hello",
                    style:
                        TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
 */