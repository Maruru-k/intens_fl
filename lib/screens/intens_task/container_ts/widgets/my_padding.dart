import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Padding(
          padding: EdgeInsets.only(left: 120, top: 320),
          child: Icon(
            Icons.fingerprint_outlined,
            color: Colors.white70,
            size: 200,
          ),
        ),
      ),
    );
  }
}
