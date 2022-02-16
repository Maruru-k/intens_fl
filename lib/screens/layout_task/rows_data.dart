import 'package:flutter/material.dart';

final List<RowData> settingsRowData = [
  RowData(
    icon: Icons.notifications_outlined,
    text: "Уведомления и звук",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 1");
    },
  ),
  RowData(
    icon: Icons.lock_outline,
    text: "Конфиденцияальность",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 2");
    },
  ),
  RowData(
    icon: Icons.data_usage_outlined,
    text: "Данные и память",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 3");
    },
  ),
  RowData(
    icon: Icons.mode_comment_outlined,
    text: "Настройки чатов",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 4");
    },
  ),
  RowData(
    icon: Icons.folder_open_outlined,
    text: "Папки",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 5");
    },
  ),
  RowData(
    icon: Icons.devices_outlined,
    text: "Устройства",
    setBorder: true,
    onTapFunction: () {
      print("Settings: 6");
    },
  ),
  RowData(
    icon: Icons.language_outlined,
    text: "Язык",
    onTapFunction: () {
      print("Settings: 7");
    },
  ),
];

final List<RowData> helpRowData = [
  RowData(
    icon: Icons.textsms_outlined,
    text: "Задать вопрос",
    setBorder: true,
    onTapFunction: () {
      print("Help: 1");
    },
  ),
  RowData(
    icon: Icons.help_outline_outlined,
    text: "Вопросы от Telegram",
    setBorder: true,
    onTapFunction: () {
      print("Help: 2");
    },
  ),
  RowData(
    icon: Icons.gpp_good_outlined,
    text: "Политика Конфединциальности",
    setBorder: true,
    onTapFunction: () {
      print("Help: 3");
    },
  ),
];

final List<AccountData> accountRowData = [
  AccountData(
    text: "+7 (938) 200-39-01",
    bottomText: "Нажмите, чтобы изменить номер телефона",
    setBorder: true,
    onTapFunction: () {
      print("Acc: 1");
    },
  ),
  AccountData(
    text: "@Maruru_k",
    bottomText: "Имя пользователя",
    setBorder: true,
    onTapFunction: () {
      print("Acc: 2");
    },
  ),
  AccountData(
    text: "Человек",
    bottomText: "О себе",
    onTapFunction: () {
      print("Acc: 3");
    },
  ),
];

class RowData {
  final IconData icon;
  final Color iconColor;
  final String text;
  final Function() onTapFunction;
  bool setBorder;

  RowData(
      {Color? iconColor,
      required this.icon,
      required this.text,
      required this.onTapFunction,
      this.setBorder = false})
      : iconColor = iconColor ?? Colors.white24;
}

class AccountData {
  final String text;
  final String bottomText;
  final Function() onTapFunction;
  bool setBorder;

  AccountData(
      {required this.text,
      required this.bottomText,
      required this.onTapFunction,
      this.setBorder = false});
}
