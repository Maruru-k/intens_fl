import 'package:flutter/material.dart';
import 'package:intens_fl/screens/verstka_task/widgets/account_column_widget.dart';
import 'package:intens_fl/screens/verstka_task/widgets/app_bar_title_widget.dart';
import 'package:intens_fl/screens/verstka_task/widgets/column_row_widget.dart';
import 'package:intens_fl/screens/verstka_task/widgets/searc_panel_widget.dart';

class TelegramSettings extends StatelessWidget {
  TelegramSettings({Key? key}) : super(key: key);

  final String name = "@Maruru_k";
  final String phoneNumber = "+7 938 200 3901";
  final String insta = "@hide_the_pain_harold";
  final NetworkImage profileImage = const NetworkImage(
      "https://avatars.githubusercontent.com/u/97803700?v=4");

  final List<RowData> settingsRowData = [
    RowData(
      icon: Icons.notifications_outlined,
      text: "Уведомления и звук",
      setBorder: true,
      onTapFunction: () {
        print(1);
      },
    ),
    RowData(
      icon: Icons.lock_outline,
      text: "Конфиденцияальность",
      setBorder: true,
      onTapFunction: () {
        print(2);
      },
    ),
    RowData(
      icon: Icons.data_usage_outlined,
      text: "Данные и память",
      setBorder: true,
      onTapFunction: () {
        print(3);
      },
    ),
    RowData(
      icon: Icons.mode_comment_outlined,
      text: "Настройки чатов",
      setBorder: true,
      onTapFunction: () {
        print(4);
      },
    ),
    RowData(
      icon: Icons.folder_open_outlined,
      text: "Папки",
      setBorder: true,
      onTapFunction: () {
        print(5);
      },
    ),
    RowData(
      icon: Icons.devices_outlined,
      text: "Устройства",
      setBorder: true,
      onTapFunction: () {
        print(6);
      },
    ),
    RowData(
      icon: Icons.language_outlined,
      text: "Язык",
      onTapFunction: () {
        print(7);
      },
    ),
  ];

  final List<RowData> helpRowData = [
    RowData(
      icon: Icons.textsms_outlined,
      text: "Задать вопрос",
      setBorder: true,
      onTapFunction: () {
        print(1);
      },
    ),
    RowData(
      icon: Icons.help_outline_outlined,
      text: "Вопросы от Telegram",
      setBorder: true,
      onTapFunction: () {
        print(2);
      },
    ),
    RowData(
      icon: Icons.gpp_good_outlined,
      text: "Политика Конфединциальности",
      setBorder: true,
      onTapFunction: () {
        print(3);
      },
    ),
  ];

  final List<AccountData> accountRowData = [
    AccountData(
      text: "+7 938 200 3901",
      bottomText: "Нажмите, чтобы изменить номер телефона",
      setBorder: true,
      onTapFunction: () {
        print(1);
      },
    ),
    AccountData(
      text: "@Maruru_k",
      bottomText: "Имя пользователя",
      setBorder: true,
      onTapFunction: () {
        print(2);
      },
    ),
    AccountData(
      text: "Человек",
      bottomText: "О себе",
      onTapFunction: () {
        print(3);
      },
    ),
  ];

  final TextStyle fileInfoTextStyle = const TextStyle(
    fontSize: 15,
    color: Colors.white38,
  );
  final BorderSide borderColorSet = const BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141e28),
      appBar: AppBar(
        toolbarHeight: 98,
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: const TextStyle(color: Colors.black38, fontSize: 17),
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              AppBarTitlePanelWidget(),
              SizedBox(height: 15),
              SearchPanelWidget(),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 92,
              color: const Color(0xff1d2732),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 13, bottom: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 33, backgroundImage: profileImage),
                  Container(
                    margin: const EdgeInsets.only(left: 13, right: 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold)),
                        Text(phoneNumber, style: fileInfoTextStyle),
                        Expanded(child: Text(insta, style: fileInfoTextStyle)),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right, color: Colors.black38)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          AccountColumnWidget(
            title: "Аккаунт",
            borderColorSet: borderColorSet,
            data: accountRowData,
          ),
          const SizedBox(height: 20),
          ColumnRowsWidget(
            title: "Настройки",
            borderColorSet: borderColorSet,
            rowData: settingsRowData,
          ),
          const SizedBox(height: 20),
          ColumnRowsWidget(
            title: "Помошь",
            borderColorSet: borderColorSet,
            rowData: helpRowData,
          ),
        ],
      ),
    );
  }
}

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
      : iconColor = iconColor ?? Colors.grey;
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
