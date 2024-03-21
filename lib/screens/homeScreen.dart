import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/constant.dart';
import 'package:travel/screens/CategoriesCard.dart';
import 'package:travel/screens/allCatogries.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int cur = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: maincolor,
        onTap: (value) {
          setState(() {
            cur = value;
          });
        },
        currentIndex: cur,
        //iconSize: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          /* BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),*/
        ],
      ),
      backgroundColor: Color.fromARGB(255, 243, 237, 237),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/adel.jpg"),
                    radius: 30,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Trip Planner",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/OperaHouse-Australia.jpg"),
                    )),
                height: 400,
                width: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: maincolor),
                          height: 25,
                          width: 100,
                          child: Text(
                            "Prefect for you",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Text(
                          "What to do",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "OperaHouse ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "hsafjhsafhlaksfhhdsajhasfhassjdfhasfjhsajfsakjhfjh",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              height: 220,
              width: 400,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 8),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 8),
                          child: Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2, top: 8),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => allCatogries()));
                              },
                              icon: Icon(Icons.arrow_circle_right,
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoriesCard(
                                imagename: "images/park.jpg",
                                categrorename: "Park",
                              ),
                              CategoriesCard(
                                  imagename: "images/Mountain view.jpg",
                                  categrorename: "mountain"),
                              CategoriesCard(
                                  imagename: "images/Pyramids.jpg",
                                  categrorename: "Pyramids"),
                              CategoriesCard(
                                  imagename: "images/india.jpg",
                                  categrorename: "land mark"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
