import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.orange,
        width: 200,
        height: 200,
        child: FittedBox(
            child: Container(color: Colors.blue, width: 300, height: 30)),
      ),
    ));
  }
}
