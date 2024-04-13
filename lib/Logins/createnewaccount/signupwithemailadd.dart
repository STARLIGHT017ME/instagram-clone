import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Logins/loginbuttons.dart';
import 'package:instagramproj/Logins/textfield.dart';

class Signupwithemailaddress extends StatelessWidget {
  const Signupwithemailaddress({super.key});

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
                  child: Icon(Icons.arrow_back),
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
                          text: "What's your email address?\n",
                          style: TextStyle(fontSize: 26),
                        ),
                        TextSpan(
                          text:
                              "\nEnter the email address at which you can be contacted.No one see this on your profile",
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
                  label: "Email address",
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
                ),
                SizedBox(
                  height: 10,
                ),
                Loginbutton(
                    text: "Sign up with Mobile Number",
                    style: Colors.white,
                    sidecolor: Colors.white24,
                    backgroundcolor: Colors.transparent)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
