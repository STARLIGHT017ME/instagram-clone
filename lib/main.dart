import 'package:flutter/material.dart';
import 'package:instagramproj/foryou.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 17, color: Colors.white),
        ),

        /* ICONS COLOR SCHEME */
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Foryoupage(),
    );
  }
}
