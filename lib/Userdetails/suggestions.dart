import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discovermorepeople extends StatelessWidget {
  const Discovermorepeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.4),
                color: Colors.black,
                borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/user1.jpg"),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Followed by Users",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          fixedSize: MaterialStatePropertyAll(
                            Size(140, 5),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {},
                      child: Text("Follow"))
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              child: Icon(Icons.cancel),
              color: Colors.black,
            ),
          )
        ]),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
