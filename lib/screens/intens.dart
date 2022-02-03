import 'package:flutter/material.dart';

class IntenseTask extends StatelessWidget {
  const IntenseTask({Key? key}) : super(key: key);
  static const double newFontSize = 32;
  static const double boxConstraintsHeight = 250;
  static const double boxConstraintsWidth = 300;
  static const TextStyle _myTextStyle =
      TextStyle(fontSize: newFontSize, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Container(
            constraints: const BoxConstraints.tightFor(
              height: boxConstraintsHeight,
              width: boxConstraintsWidth,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: const Text("Каждый", style: _myTextStyle),
                        ),
                        flex: "Каждый".length,
                      ),
                      Expanded(
                        flex: "охотник".length,
                        child: Container(
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: const Text("охотник", style: _myTextStyle),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          alignment: Alignment.center,
                          child: const Text("желает", style: _myTextStyle),
                        ),
                        flex: "желает".length,
                      ),
                      Expanded(
                        flex: "знать".length,
                        child: Container(
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: const Text("знать", style: _myTextStyle),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.lightBlue,
                          alignment: Alignment.center,
                          child: const Text("где", style: _myTextStyle),
                        ),
                        flex: "где".length,
                      ),
                      Expanded(
                        flex: "сидит".length,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: const Text("сидит", style: _myTextStyle),
                        ),
                      ),
                      Expanded(
                        flex: "фазан".length,
                        child: Container(
                          color: Colors.purple,
                          alignment: Alignment.center,
                          child: const Text("фазан", style: _myTextStyle),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
