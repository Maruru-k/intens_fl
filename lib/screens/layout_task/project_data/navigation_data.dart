import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/home_screen.dart';
import 'package:intens_fl/screens/layout_task/qr_screen.dart';
import 'package:intens_fl/screens/layout_task/telegram_settings_screen.dart';

class NavigationKeys {
  static const String telegramHome = "/";
  static const String telegramSettings = "/telegram_settings";
  static const String qrCode = "/qr_screen";
}

class NavigationData {
  final Map<String, WidgetBuilder> _navigationData = {
    NavigationKeys.telegramHome: (context) => const TelegramHomeScreen(),
    NavigationKeys.telegramSettings: (context) => const TelegramSettings(),
    NavigationKeys.qrCode: (context) => const QrCodeScreenWidget(),
  };

  Map<String, WidgetBuilder> get navigationData => _navigationData;
}
