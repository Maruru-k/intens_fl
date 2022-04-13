import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  _MyInkWellState createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.green[300])),
          Expanded(
            child: Material(
              child: InkWell(
                radius: 1000,
                borderRadius: BorderRadius.circular(200),
                hoverColor: Colors.pink[200],
                highlightColor: Colors.yellow[200],
                focusColor: Colors.black,
                splashColor: Colors.black,
                onLongPress: () {
                  count = 0;
                  setState(() {});
                },
                onTap: () {
                  count++;
                  setState(() {});
                },
                child: Ink(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      count == 0 ? 'Press me' : count.toString(),
                      style: const TextStyle(fontSize: 65),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container(color: Colors.green[300])),
        ],
      ),
    );
  }
}
