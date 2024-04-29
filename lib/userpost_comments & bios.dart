import 'package:flutter/material.dart';
import 'package:instagramproj/commentsection.dart';

class Userpost extends StatefulWidget {
  const Userpost({super.key});

  @override
  State<Userpost> createState() => _UserpostState();
}

class _UserpostState extends State<Userpost> {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.messenger_outline,
                    size: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.send_outlined,
                    size: 25,
                  ),
                  Spacer(),
                  Icon(
                    Icons.bookmark_border,
                    size: 30,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Text(
                  "17,383 likes",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Text(
                  "Bios",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Commentsection(),
        Container(
          child: SizedBox(
            width: double.infinity,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                icon: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/shoe3.jpg",
                  ),
                  radius: 16,
                ),
                disabledBorder: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent, style: BorderStyle.none),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                hintText: "Add comments...",
                hintStyle: TextStyle(fontSize: 13, color: Colors.white10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
