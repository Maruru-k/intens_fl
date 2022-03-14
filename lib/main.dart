import 'package:flutter/material.dart';
import 'package:intens_fl/layout_task/data_project/navigation_data.dart';
import 'package:intens_fl/les54.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/noble_gas_screen.dart';
import 'package:intens_fl/screens/intens_task/olimpics/olympics22.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
      debugShowCheckedModeBanner: false,
      title: "Hell o",
      routes: NavigationData().navigationData,
    );
  }
}
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // theme: ThemeData(colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
//       debugShowCheckedModeBanner: false,
//       home: Example(),
//       title: "Hell o",
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme:
//           ThemeData(colorScheme: const ColorScheme.light(primary: Colors.teal)),
//       home: const SafeArea(child: MyStatefulWidget()),
//     );
//   }
// }
