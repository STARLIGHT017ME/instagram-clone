import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramproj/Logins/loginbuttons.dart';
import 'package:instagramproj/Logins/textfield.dart';

class Forgottenpassword extends StatelessWidget {
  const Forgottenpassword({super.key});

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
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Find your account?\n",
                          style: TextStyle(fontSize: 26),
                        ),
                        TextSpan(
                          text:
                              "\nEnter your username,email address or mobile number",
                          style: TextStyle(fontSize: 13, letterSpacing: 0.7),
                        ),
                        TextSpan(
                          text: "\nCan't reset your password? ",
                          style: TextStyle(
                              fontSize: 13,
                              letterSpacing: 0.7,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Mytextfield(
                  label: "username,email address or mobile number",
                  obscureText: false,
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You may recieve WhatsApp, SMS notification from us for security and login purposes.",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Loginbutton(
                  text: "Continue",
                  style: Colors.white,
                  sidecolor: Colors.transparent,
                  backgroundcolor: Color.fromRGBO(0, 100, 224, 3),
                  routeName: '',
                ),
                SizedBox(
                  height: 10,
                ),
                Loginbutton(
                  text: "Log in with Facebook",
                  style: Colors.white,
                  sidecolor: Colors.white24,
                  backgroundcolor: Colors.transparent,
                  routeName: '',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
