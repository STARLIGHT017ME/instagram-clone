import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/commentsection.dart';
import 'package:instagramproj/userpost_comments%20&%20bios.dart';

class Forufeeds extends StatelessWidget {
  const Forufeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/shoe3.jpg"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Nike"),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                    Text("3 Days ago", style: TextStyle(fontSize: 10)),
                  ],
                ),
                SizedBox(
                  width: 590,
                ),
                Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
          SizedBox(
            child: Image.asset(
              "images/shoe3.jpg",
              width: 750,
              height: 900,
            ),
          ),
          const Userpost(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
