import 'package:flutter/material.dart';
import 'package:instagramproj/constant.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Row(
        children: [
          ConstDrawer(),
        ],
      ),
    );
  }
}
