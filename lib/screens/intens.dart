import 'package:flutter/material.dart';

class IntensTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: const Text("Каждый"),
              ),
              Container(
                color: Colors.orange,
                child: const Text("охотник"),
              ),
              Container(
                color: Colors.yellow,
                child: const Text("желает"),
              ),
              Container(
                color: Colors.green,
                child: const Text("знать"),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Text("где"),
              ),
              Container(
                color: Colors.blue,
                child: const Text("сидит"),
              ),
              Container(
                color: Colors.purple,
                child: const Text("Фазан"),
              ),
            ],
          ),
        )
      ),
    );
  }
}
