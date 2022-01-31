import 'package:flutter/material.dart';

class IntenseTask2 extends StatefulWidget {
  @override
  _IntenseTask2State createState() => _IntenseTask2State();
}

class _IntenseTask2State extends State<IntenseTask2> {
  int flag = 0;

  static const List<Color> setIconColor = [
    Colors.red,
    Colors.white70,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                  color: setIconColor[flag],
                  semanticLabel: "Home",
                  size: 200,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      flag == 0 ? flag = 1 : flag = 0;
                    });
                  },
                  child: const Text("Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
