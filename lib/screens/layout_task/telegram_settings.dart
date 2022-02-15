import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/rows_data.dart';
import 'package:intens_fl/screens/layout_task/widgets/account_column_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/app_bar_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/column_row_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/searc_panel_widget.dart';

class TelegramSettings extends StatelessWidget {
  const TelegramSettings({Key? key}) : super(key: key);

  final String name = "@Maruru_k";
  final String fullName = "Markus Katilov";
  final String phoneNumber = "+7 938 200 3901";
  final NetworkImage profileImage = const NetworkImage(
      "https://avatars.githubusercontent.com/u/97803700?v=4");

  final BorderSide borderColorSet = const BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add_a_photo_outlined,
            color: Colors.white70,
            size: 32,
          ),
          backgroundColor: const Color(0xff5eaade),
        ),
      ),
      backgroundColor: const Color(0xff141e28),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
              iconSize: 30,
            )),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_outlined),
              iconSize: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
              iconSize: 30,

            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              iconSize: 30,
            ),
          ),
        ],
        toolbarHeight: 180,
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: const TextStyle(color: Colors.black38, fontSize: 17),
        flexibleSpace: AppBarPanelWidget(
          profileImage: profileImage,
          fullName: fullName,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 1),
          AccountColumnWidget(
            title: "Аккаунт",
            borderColorSet: borderColorSet,
            data: accountRowData,
          ),
          const SizedBox(height: 16),
          ColumnRowsWidget(
            title: "Настройки",
            borderColorSet: borderColorSet,
            rowData: settingsRowData,
          ),
          const SizedBox(height: 16),
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
