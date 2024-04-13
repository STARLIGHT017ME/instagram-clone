import 'package:flutter/material.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithemailadd.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithmobno.dart';
import 'package:instagramproj/Logins/forgottenpassword.dart';
import 'package:instagramproj/Logins/loginpage.dart';
import 'package:instagramproj/Userdetails/userdetails.dart';
import 'package:instagramproj/foryou.dart';
import 'package:instagramproj/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, primary: Color.fromARGB(255, 20, 20, 20)),
        textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 17, color: Colors.white),
        ),

        /* ICONS COLOR SCHEME */
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:Loginpage(),
    );
  }
}
