import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
                      return Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Image.asset("images/shoe4.jpg"),
                                  const Padding(
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: Text("17,383 likes"),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text("Bios"),
                                      )),
                                  GestureDetector(
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 7),
                                          child: Text("view all 2355"),
                                        )),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              // height: 500,
                                              width: 500,
                                              child: Container(
                                                color: Colors.black26,
                                              ),
                                            );
                                          });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
