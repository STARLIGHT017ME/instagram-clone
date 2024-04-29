import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Logins/loginbuttons.dart';
import 'package:instagramproj/Logins/textfield.dart';

class Signupmobilenumber extends StatefulWidget {
  const Signupmobilenumber({super.key});

  @override
  State<Signupmobilenumber> createState() => _SignupmobilenumberState();
}

class _SignupmobilenumberState extends State<Signupmobilenumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: const Color.fromRGBO(14, 32, 46, 2),
          child: Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 15, right: 17),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/loginpage');
                        print("hello");
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "What's your mobile number?\n",
                          style: TextStyle(fontSize: 26),
                        ),
                        TextSpan(
                          text:
                              "\nEnter the mobile number on which you can be contacted.No one see this on your profile",
                          style: TextStyle(fontSize: 13, letterSpacing: 0.7),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Mytextfield(
                  label: "Mobile number",
                  obscureText: false,
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You may recieve SMS notification from us for security and login purposes.",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Loginbutton(
                  text: "Next",
                  style: Colors.white,
                  sidecolor: Colors.transparent,
                  backgroundcolor: Color.fromRGBO(0, 100, 224, 3),
                  routeName: '',
                ),
                SizedBox(
                  height: 10,
                ),
                Loginbutton(
                  text: "Sign up with email address",
                  style: Colors.white,
                  sidecolor: Colors.white24,
                  backgroundcolor: Colors.transparent,
                  routeName: '/signupwith_email',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
