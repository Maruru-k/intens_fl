import 'package:flutter/material.dart';

class LightOffOn extends StatefulWidget {
  const LightOffOn({Key? key}) : super(key: key);

  @override
  State<LightOffOn> createState() => _LightOffOnState();
}

class _LightOffOnState extends State<LightOffOn> {
  bool onOff = false;
  List<int> counter = [0, 0, 0];

  _switchOnOff() {
    onOff = !onOff;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                counter[0]++;
              });
            },
            child: Container(
              color: Colors.pink,
              child: Center(
                child: Text(
                  counter[0].toString(),
                  style: const TextStyle(fontSize: 80, color: Colors.white70),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                counter[1]++;
              });
            },
            child: Container(
              color: Colors.purple,
              child: Center(
                child: Text(
                  counter[1].toString(),
                  style: const TextStyle(fontSize: 80, color: Colors.white70),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                counter[2]++;
              });
            },
            child: Container(
              color: Colors.yellow,
              child: Center(
                child: Text(
                  counter[2].toString(),
                  style: const TextStyle(fontSize: 80, color: Colors.white70),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
