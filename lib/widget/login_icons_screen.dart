import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login_icons_screen extends StatelessWidget {
  final String immage;
  const login_icons_screen({
    super.key,
    required this.immage,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        child: Image.asset(
          immage,
          fit: BoxFit.cover,
        ));
  }
}
