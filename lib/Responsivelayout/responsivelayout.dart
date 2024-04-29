import 'package:flutter/material.dart';
import 'package:instagramproj/Responsivelayout/desktoplayout.dart';
import 'package:instagramproj/Responsivelayout/mobilelayout.dart';
import 'package:instagramproj/Responsivelayout/tabletlayout.dart';

class Responsivelayout extends StatelessWidget {
  final Widget mobilelayout;
  final Widget tabletlayout;
  final Widget desktoplayout;

  const Responsivelayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desktoplayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return mobilelayout;
        } else if (constraints.maxWidth < 1024) {
          return tabletlayout;
        } else {
          return desktoplayout;
        }
      },
    );
  }
}
