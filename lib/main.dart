import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _i = 0;

  void _increment() {
    setState(() {
      _i++;
    });
  }

  void _decriment() {
    setState(() {
      _i--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.indigo,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 20,
                    fontSize: 100,
                  ),
                ),
                Text(
                  "$_i",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    letterSpacing: 30,
                    fontSize: 100,
                  ),
                ),
                ElevatedButton(onPressed: _decriment, child: Text("Clack")),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          tooltip: "but",
          child: const Icon(Icons.home_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
