import 'package:flutter/material.dart';
import 'package:instagramproj/navigationbar.dart';

class Media extends StatelessWidget {
  const Media({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Theme.of(context).colorScheme.primary,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
              Expanded(child: Center(child: Text("Media",style: TextStyle(fontSize: 50,color: Colors.white),)))
            ])));
  }
}
