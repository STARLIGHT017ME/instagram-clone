import 'package:flutter/material.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithemailadd.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithmobno.dart';
import 'package:instagramproj/Logins/forgottenpassword.dart';
import 'package:instagramproj/Logins/loginpage.dart';
import 'package:instagramproj/Responsivelayout/desktoplayout.dart';
import 'package:instagramproj/Responsivelayout/mobilelayout.dart';
import 'package:instagramproj/Responsivelayout/responsivelayout.dart';
import 'package:instagramproj/Responsivelayout/tabletlayout.dart';
import 'package:instagramproj/Search/search.dart';
import 'package:instagramproj/Userdetails/userdetails.dart';
import 'package:instagramproj/foryou.dart';
import 'package:instagramproj/media/media.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: const Color.fromARGB(255, 20, 20, 20),
        ),
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
      home: const Responsivelayout(
          mobilelayout: MobileScaffold(),
          tabletlayout: TabletScaffold(),
          desktoplayout: DesktopScaffold()),
      routes: {
        '/signupwith_mobno': (context) => const Signupmobilenumber(),
        '/loginpage': (context) => const Loginpage(),
        '/signupwith_email': (context) => const Signupemailaddress(),
        '/forgotten': (context) => const Forgottenpassword(),
        '/foryoupage': (context) => const Foryoupage(),
        '/search': (context) => const Search(),
        '/media': (context) => const Media(),
        '/Userinfo': (context) => const Userdetails(),
        '/Tabletview': (context) => const TabletScaffold(),
      },
    );
  }
}
