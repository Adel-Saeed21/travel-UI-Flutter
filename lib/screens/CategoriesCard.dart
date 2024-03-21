import 'package:flutter/material.dart';
import 'package:travel/screens/ThirdScreen.dart';

class CategoriesCard extends StatelessWidget {
  final String imagename;
  final String categrorename;

  const CategoriesCard({
    super.key,
    required this.imagename,
    required this.categrorename,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ThirdScreen())),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imagename))),
              height: 90,
              width: 90,
            ),
            Text(
              categrorename,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
