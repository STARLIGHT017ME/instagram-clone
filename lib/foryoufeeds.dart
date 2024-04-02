import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/commentsection.dart';

class Forufeeds extends StatelessWidget {
  const Forufeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
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
              FutureBuilder(
                  future: Future.delayed(const Duration(seconds: 3)),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return Expanded(
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                height: 500,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("images/user1.jpg"),
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 15, 0, 0),
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
                                              SizedBox(
                                                width: 550,
                                              ),
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 7),
                                            child: Text("17,383 likes"),
                                          ),
                                        ),
                                        const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 7),
                                              child: Text("Bios"),
                                            )),
                                      ],
                                    ),
                                    const Commentsection(),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 6.0),
                                      child: TextField(
                                        keyboardAppearance: Brightness.dark,
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
                                                color: Colors.transparent,
                                                style: BorderStyle.none),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          hintText: "Add comments....",
                                          hintStyle: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      );
                    }
                  }),
            ],
          )
        ],
      ),
    );
  }
}
