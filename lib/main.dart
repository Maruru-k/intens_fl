import 'package:flutter/material.dart';
import 'package:intens_fl/screens/home.dart';
import 'package:intens_fl/screens/intens.dart';
import 'package:intens_fl/screens/intens_2.dart';
import 'package:intens_fl/screens/layout_task/telegram_settings.dart';
import 'package:intens_fl/widgets/my_align.dart';
import 'package:intens_fl/widgets/my_padding.dart';
import 'package:intens_fl/widgets/my_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.dark(primary: Color(0xff1f2d3b))),
      debugShowCheckedModeBanner: false,
      home: const TelegramSettings(),
      title: "Hell o",
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
