import 'package:flutter/material.dart';
import 'package:travel/constant.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 216, 216),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close_outlined,
                        )),
                    backgroundColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "images/Earth.png",
              ),
              const Text(
                "Level 2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Text(
                "Traveller",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: maincolor,
                        ),
                        width: 100,
                        height: 45,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.donut_small_sharp,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(
                      Icons.donut_small_sharp,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: const Color.fromARGB(255, 227, 221, 221)),
                      height: 40,
                      width: 60,
                      child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.donut_small_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.donut_small_sharp,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Trips token",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "this year:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Trips left",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "to gain level:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
