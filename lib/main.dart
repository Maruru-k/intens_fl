import 'package:flutter/material.dart';
import 'package:intens_fl/layout_task/data_project/navigation_data.dart';
import 'package:intens_fl/les54.dart';
import 'package:intens_fl/les63_stful/scroll.dart';
import 'package:intens_fl/les63_stful/stful.dart';
import 'package:intens_fl/les68_recent_calls/empty_page.dart';
import 'package:intens_fl/les68_recent_calls/recent_calls_screen.dart';
import 'package:intens_fl/les73/les73.dart';
import 'package:intens_fl/les74_inkwell/les74_inkwell.dart';
import 'package:intens_fl/my_stack.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/noble_gas_screen.dart';
import 'package:intens_fl/screens/intens_task/olimpics/olympics22.dart';

import 'screens/singChildScroll.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
//       debugShowCheckedModeBanner: false,
//       title: "Hell o",
//       routes: NavigationData().navigationData,
//     );
//   }
// }
//
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MyInkWell(),
        // "/":(context)=> const RecentCalls(),
        // "/empty":(context)=> const EmptyPage(),
      },
    );
  }
}

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
