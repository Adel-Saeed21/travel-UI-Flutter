import 'package:flutter/material.dart';
import 'package:travel/constant.dart';
import 'package:travel/widget/Text_login.dart';
import 'package:travel/widget/login_icons_screen.dart';

import 'package:travel/screens/homeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 900,
              height: 800,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/Loginimage.jpg")),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Text_login(
                    texxt: "NAVIGATE",
                    textsize: 25,
                    fontWeight1: FontWeight.w800,
                  ),
                  Text_login(
                    texxt: "THE WORLED",
                    textsize: 25,
                    fontWeight1: FontWeight.w800,
                  ),
                  Text_login(
                    texxt: "let trip planner guide you",
                    textsize: 15,
                    fontWeight1: FontWeight.w300,
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Container(
                    width: 420,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => homeScreen()));
                          },
                          child: Text(
                            "Create new account",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: maincolor,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width - 50, 60)),
                        ),
                        Text(
                          "I already have an account",
                          style: TextStyle(fontSize: 15, color: maincolor),
                        ),
                        Text(
                          "sign in using",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            login_icons_screen(immage: "images/facebook.png"),
                            login_icons_screen(
                                immage: "images/icons8-google-48.png"),
                            login_icons_screen(
                                immage: "images/icons8-apple-logo-30.png"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
