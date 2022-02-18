import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  const MyAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Align(
          alignment: Alignment.bottomRight,
          child: Icon(Icons.fingerprint_outlined,
            color: Colors.white70,
            size: 200,
          ),
        ),
      ),
    );
  }
}