import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConstDrawer extends StatefulWidget {
  const ConstDrawer({super.key});

  @override
  State<ConstDrawer> createState() => _ConstDrawerState();
}

class _ConstDrawerState extends State<ConstDrawer> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black26,
      width: 100,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedindex = 0;
                  });
                  Navigator.pushNamed(context, '/Tabletview');
                },
                child: Image.asset(
                  color: Colors.white,
                  "lib/icons/home (1).png",
                  width: 40,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedindex = 1;
                });
                Navigator.pushNamed(context, '/search');
              },
              child: ListTile(
                leading: Image.asset(
                  color: Colors.white,
                  "lib/icons/search-interface-symbol.png",
                  width: 40,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset(
                color: Colors.white,
                "lib/icons/clapperboard.png",
                width: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset(
                color: Colors.white,
                "lib/icons/send.png",
                width: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                weight: 0.2,
                Icons.add_box_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: GestureDetector(
                onTap: () {
                  setState(() {
                    setState(() {
                      _selectedindex = 7;
                    });
                    Navigator.pushNamed(context, '/Userinfo');
                  });
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/shoe3.jpg",
                  ),
                  radius: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
