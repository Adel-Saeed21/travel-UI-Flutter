import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/screens/CategoriesCard.dart';

class allCatogries extends StatelessWidget {
  const allCatogries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemBuilder: (context, i) => CategoriesCard(
            imagename: "images/park.jpg", categrorename: "adool"),
      ),
    );
  }
}
