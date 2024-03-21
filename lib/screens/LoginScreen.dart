import 'package:flutter/material.dart';
import 'package:travel/constant.dart';
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
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "NAVIGATE",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: const Color.fromARGB(255, 110, 106, 106)),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "THE WORLED",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: const Color.fromARGB(255, 110, 106, 106)),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "let trip planner guide you",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: const Color.fromARGB(255, 110, 106, 106)),
                      )),
                  SizedBox(
                    height: 50,
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
                            CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "images/facebook.png",
                                )),
                            CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "images/icons8-google-48.png",
                                )),
                            CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  "images/icons8-apple-logo-30.png",
                                )),
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
