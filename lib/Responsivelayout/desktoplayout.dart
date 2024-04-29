import 'package:flutter/material.dart';
import 'package:instagramproj/constant.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ConstDrawer(),
        ],
      ),
    );
  }
}
