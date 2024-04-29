import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Appsidenavigation extends StatefulWidget {
  const Appsidenavigation({super.key});

  @override
  State<Appsidenavigation> createState() => _AppsidenavigationState();
}

class _AppsidenavigationState extends State<Appsidenavigation> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* Home */

        GestureDetector(
          onTap: () {
            setState(() {
              _selectedindex = 0;
            });
            Navigator.pushNamed(context, '/foryoupage');
          },
          child: Image.asset(
            "lib/icons/home (1).png",
            height: 40,
            width: 25,
            color: _selectedindex == 0 ? Colors.blue : Colors.white,
          ),
        ),

        /* SEARCH */

        GestureDetector(
          onTap: () {
            setState(() {
              _selectedindex = 1;
            });
            Navigator.pushNamed(context, '/search');
          },
          child: Image.asset(
            "lib/icons/search-interface-symbol.png",
            height: 40,
            width: 25,
            color: _selectedindex == 1 ? Colors.blue : Colors.white,
          ),
        ),

        /* MEDIA */
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedindex = 2;
            });
            Navigator.pushNamed(context, '/media');
          },
          child: Image.asset(
            "lib/icons/send.png",
            height: 60,
            width: 25,
            color: _selectedindex == 2 ? Colors.blue : Colors.white,
          ),
        ),
      ],
    );
  }
}
