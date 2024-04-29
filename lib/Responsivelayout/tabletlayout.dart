import 'package:flutter/material.dart';
import 'package:instagramproj/Appbarnavigation.dart';
import 'package:instagramproj/constant.dart';
import 'package:instagramproj/storyview/storyview.dart';
import 'package:instagramproj/userpagesview.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /* TO PREVENT BOTTOM OVERFLOW */
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
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  /* FOLLOWING,FOR YOU,FAVORITE */
                  Apptopnavigations(),
                  SizedBox(
                    height: 20,
                  ),
                  /* STORY VIEW */
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white24,
                          width: 0.1,
                        ),
                      ),
                    ),
                    child: Storyview(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /* PAGE VIEW USER */
                  Userpageview()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
