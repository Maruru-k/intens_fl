import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/home_screen.dart';
import 'package:intens_fl/screens/layout_task/qr_screen.dart';
import 'package:intens_fl/screens/layout_task/telegram_settings_screen.dart';

Map<String, WidgetBuilder> navigationData = {
  "/": (context) => const TelegramHomeScreen(),
  "/telegram_settings": (context) => const TelegramSettings(),
  "/qr_screen": (context) => const QrCodeScreenWidget(),
};

class NavigationData extends StatelessWidget {
  NavigationData({Key? key}) : super(key: key);

  final Map<String, WidgetBuilder> navigationData = {
    "/": (context) => const TelegramHomeScreen(),
    "/telegram_settings": (context) => const TelegramSettings(),
    "/qr_screen": (context) => const QrCodeScreenWidget(),
  };

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
