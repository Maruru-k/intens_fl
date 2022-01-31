import 'package:flutter/material.dart';
import 'package:intens_fl/screens/home.dart';
import 'package:intens_fl/screens/intens.dart';
import 'package:intens_fl/screens/intens_2.dart';

void main() {
  runApp(IntenseTask2());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: const ColorScheme.light(primary: Colors.teal)),
      home: const SafeArea(child: MyStatefulWidget()),
    );
  }
}
