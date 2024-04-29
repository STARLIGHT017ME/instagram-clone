import 'package:flutter/material.dart';
import 'package:instagramproj/constant.dart';
import 'package:instagramproj/navigationbar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstDrawer(),
        Expanded(
            child: Column(
          children: [Text("Hi")],
        ))
      ],
    );
  }
}
