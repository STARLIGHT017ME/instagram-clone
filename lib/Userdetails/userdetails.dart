import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Userdetails/suggestions.dart';
import 'package:instagramproj/navigationbar.dart';

class Userdetails extends StatelessWidget {
  const Userdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.white,
                            width: 0.2,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 100, 20, 0),
                          child: Appsidenavigation(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      surfaceTintColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      title: const Row(
                        children: [
                          Text("Username",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 500,
                          ),
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.add_box_outlined, color: Colors.white),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.menu, color: Colors.white)
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
                                const SizedBox(
                                  width: 230,
                                ),
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
                                const Text(
                                  "34,999\nfollowing",
                                  style: TextStyle(color: Colors.white),
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
                              children: [
                                Container(
                                  height: 32,
                                  width: 325,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(54, 54, 54, 4),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Edit profile",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 32,
                                  width: 325,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(54, 54, 54, 4),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Share profile",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Color.fromRGBO(54, 54, 54, 4),
                                  ),
                                  child: const Icon(
                                      Icons.supervised_user_circle_rounded),
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
                                SizedBox(
                                  width: 550,
                                ),
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
                                return Suggestions();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 0.3),
                              ),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: const Icon(Icons.add),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    /* SliverToBoxAdapter(
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.white, width: 0.3),
                          ),
                        ),
                        child: const Row(
                          children: [
                            
                          ],
                        ),
                      ),
                    ) */
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
