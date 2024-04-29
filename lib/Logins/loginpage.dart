import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithemailadd.dart';
import 'package:instagramproj/Logins/createnewaccount/signupwithmobno.dart';
import 'package:instagramproj/Logins/loginbuttons.dart';
import 'package:instagramproj/Logins/textfield.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        /* input decoration color 28, 42, 51 */

        /* button color 0, 100, 224 */
        /* languages 28, 42, 51 */
        /* languages background 23, 30, 46 */
        color: const Color.fromRGBO(14, 32, 46, 2),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    "English(UK)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    constraints: const BoxConstraints(
                      maxWidth: 900,
                    ),
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            color: Color.fromRGBO(33, 34, 38, 4),
                          ),
                          width: double.infinity,
                          height: 900,
                          child: const Text("Hello"));
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230.0),
                child: Image.asset("lib/icons/instagram.png",
                    height: 70, width: 70),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 200, 20, 10),
                child: Column(
                  children: [
                    Mytextfield(
                      label: 'Username,email,address or mobile number',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Mytextfield(
                      label: "Password",
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Loginbutton(
                      text: 'Log in',
                      style: Colors.white,
                      sidecolor: Colors.transparent,
                      backgroundcolor: Color.fromRGBO(0, 100, 224, 3),
                      routeName: '/foryoupage',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /* Forgotten password field */
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/forgotten');
                      },
                      child: Text(
                        "Forgotten password?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 360,
                    ),
                    /* CREATE A NEW ACCOUNT FIELD */
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signupwith_mobno');
                        print("Hello");
                      },
                      child: Loginbutton(
                        text: "Create new account",
                        style: Colors.blue,
                        sidecolor: Colors.lightBlue,
                        backgroundcolor: Colors.transparent,
                        routeName: '/signupwith_mobno',
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 327),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/icons/meta (1).png",
                            color: Colors.white,
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Meta",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
  }
}
