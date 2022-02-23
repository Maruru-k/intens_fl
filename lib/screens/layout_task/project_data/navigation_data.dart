import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/home_screen.dart';
import 'package:intens_fl/screens/layout_task/qr_screen.dart';
import 'package:intens_fl/screens/layout_task/searc_screen.dart';
import 'package:intens_fl/screens/layout_task/telegram_settings_screen.dart';

class NavigationKeys {
  static const String homeScreen = "/";
  static const String settingsScreen = "/settings_screen";
  static const String qrCodeScreen = "/qr_screen";
  static const String searchScreen = "/search_screen";
}

class NavigationData {
  final Map<String, WidgetBuilder> _navigationData = {
    NavigationKeys.homeScreen: (context) => const TelegramHomeScreen(),
    NavigationKeys.settingsScreen: (context) => const TelegramSettings(),
    NavigationKeys.qrCodeScreen: (context) => const QrCodeScreenWidget(),
    NavigationKeys.searchScreen: (context) => const SearchScreen(),
  };

  Map<String, WidgetBuilder> get navigationData => _navigationData;
}
