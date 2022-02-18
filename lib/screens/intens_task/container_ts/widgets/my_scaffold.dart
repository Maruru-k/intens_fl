import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Icon(Icons.fingerprint_outlined,
            color: Colors.white70,
            size: 200,
          ),
        ),
      ),
    );
  }
}
