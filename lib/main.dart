import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/noble_gas_screen.dart';
import 'package:intens_fl/screens/layout_task/home_screen.dart';
import 'package:intens_fl/screens/layout_task/project_data/navigation_data.dart';
import 'package:intens_fl/screens/layout_task/qr_screen.dart';
import 'package:intens_fl/screens/layout_task/telegram_settings_screen.dart';

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
      routes: navigationData,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
//       debugShowCheckedModeBanner: false,
//       home: const NobleGasScreen(),
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
