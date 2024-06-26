import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Userdetails/suggestions.dart';
import 'package:instagramproj/constant.dart';
import 'package:instagramproj/navigationbar.dart';

class Userdetails extends StatelessWidget {
  const Userdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Row(
        children: [
          Container(
              /* DRAWER ICONS */
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.white,
                    width: 0.2,
                  ),
                ),
              ),
              child: ConstDrawer()),
          Expanded(
            child: SizedBox(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    surfaceTintColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    title: const Row(
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add_box_outlined, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.menu, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/shoe4.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                        ),
                                      ),
                                    ))
                              ]),
                              Spacer(),
                              const Text(
                                "0\npost",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              const Text(
                                "1,000 \nfollowers",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: const Text(
                                  "34,999\nfollowing",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "Ig handle",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 24,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(54, 54, 54, 4),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "@ threads",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("User bio",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Spacer(),
                              /* SHARE PROFILE BUTTON   */
                              Expanded(
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(270, 30),
                                    ),
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.zero),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromRGBO(54, 54, 54, 4),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Share profile",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Spacer(),
                              /* EDIT PROFILE BUTTON */
                              Expanded(
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(270, 30)),
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.zero),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromRGBO(54, 54, 54, 4),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Edit profile",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Color.fromRGBO(54, 54, 54, 4),
                                  ),
                                  child: const Icon(
                                      Icons.supervised_user_circle_rounded),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Discover People",
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "See All",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        SizedBox(
                          height: 220,
                          width: 170,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return const Discovermorepeople();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: Colors.white, width: 0.3),
                            ),
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(25.0),
                                            child: const Icon(
                                              Icons.add,
                                              size: 45,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "New",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
