import 'package:flutter/material.dart';
import 'package:instagramproj/Appbarnavigation.dart';
import 'package:instagramproj/navigationbar.dart';
import 'package:instagramproj/storyview.dart';
import 'package:instagramproj/userpagesview.dart';

class Foryoupage extends StatelessWidget {
  const Foryoupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          ))))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 735,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      surfaceTintColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      floating: true,
                      title: const Row(
                        children: [
                          Apptopnavigations(),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 0.2,
                              ),
                            ),
                          ),
                          child: const Storyview()),
                    ),
                    SliverList.builder(
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return const Userpageview();
                      },
                    )
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

       /*  body: SafeArea(
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                ),
              ),
            ),
            width: 65,
            child: const Appsidenavigation(),
          ),
          SizedBox(
            width: 735,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 25),
                child: Row(
                  ),
          ),
        ],
      ),
    ) */