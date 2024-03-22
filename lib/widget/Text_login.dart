import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Text_login extends StatelessWidget {
  final String texxt;
  final FontWeight fontWeight1;
  final double textsize;
  const Text_login({
    super.key,
    required this.texxt,
    required this.textsize,
    required this.fontWeight1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          texxt,
          style: TextStyle(
              fontWeight: fontWeight1,
              fontSize: textsize,
              color: const Color.fromARGB(255, 110, 106, 106)),
        ));
  }
}
