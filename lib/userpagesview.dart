import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/userpost_comments%20&%20bios.dart';

class Userpageview extends StatefulWidget {
  const Userpageview({super.key});

  @override
  State<Userpageview> createState() => _UserpageviewState();
}

class _UserpageviewState extends State<Userpageview> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/shoe3.jpg"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("Nike",
                          style: TextStyle(
                              color: Theme.of(context).iconTheme.color)),
                      const Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ],
                  ),
                  Text("3 Days ago",
                      style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).iconTheme.color)),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              const Icon(Icons.more_vert_outlined),
            ],
          ),
          Expanded(
              flex: 4,
              child: Image.asset(
                fit: BoxFit.fitWidth,
                "images/shoe6.jpg",
                width: double.infinity,
              )),
          const Userpost(),
        ],
      ),
    );
  }
}
