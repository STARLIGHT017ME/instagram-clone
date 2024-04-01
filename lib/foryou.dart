import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/foryoufeeds.dart';
import 'package:instagramproj/navigationbar.dart';
import 'package:instagramproj/storyview.dart';

class Foryoupage extends StatelessWidget {
  const Foryoupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                ),
              ),
            ),
            width: 65,
            child: const  Navigationsidebar(),
          ),
          SizedBox(
            width: 735,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 25),
                child: Row(
                  children: [
                    Text(
                      "For you",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Following",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Favorites",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              const Storyview(),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.white,
                      width: 0.2,
                    ),
                  ),
                ),
                child: const Forufeeds(),
              )
            ]),
          ),
        ],
      ),
    ));
  }
}
