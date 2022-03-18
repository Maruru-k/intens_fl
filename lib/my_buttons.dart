import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print("ElevatedButton");
            },
            child: const Text("ElevatedButton"),
          ),
          OutlinedButton(
            onPressed: () {
              print("OutlinedButton");
            },
            child: const Text("OutlinedButton"),
          ),
          TextButton(
            onPressed: () {
              print("TextButton");
            },
            child: const Text("TextButton"),
          ),
          IconButton(
            onPressed: () {
              print("IconButton");
            },
            icon: const Icon(Icons.ac_unit_outlined),
          )
        ],
      ),
    );
  }
}
