import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyprogressBar extends StatelessWidget {
  double percentwatched = 0;

  MyprogressBar({super.key, required this.percentwatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: Radius.circular(30),
      lineHeight: 15,
      percent: percentwatched,
      progressColor: Colors.grey[400],
      backgroundColor: Colors.grey[600],
    );
  }
}
