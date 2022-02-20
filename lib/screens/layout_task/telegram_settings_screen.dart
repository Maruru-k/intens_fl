import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/project_data/rows_data.dart';
import 'package:intens_fl/screens/layout_task/widgets/account_column_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/app_bar_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/column_row_widget.dart';
import 'package:intens_fl/screens/layout_task/widgets/searc_panel_widget.dart';

class TelegramSettings extends StatelessWidget {
  const TelegramSettings({Key? key}) : super(key: key);

  final String name = "@Maruru_k";
  final String fullName = "Markus Katilov";
  final NetworkImage profileImage = const NetworkImage(
      "https://avatars.githubusercontent.com/u/97803700?v=4");

  final BorderSide borderColorSet = const BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141e28),
      drawer: Container(color: const Color(0x99009688)),
      appBar: AppBarPanelWidget(profileImage: profileImage, fullName: fullName),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: SizedBox(
        height: 58,
        width: 58,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add_a_photo_outlined,
            color: Colors.white70,
            size: 28,
          ),
          backgroundColor: const Color(0xff5eaade),
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
          const SizedBox(height: 12),
          ColumnRowsWidget(
            title: "Настройки",
            borderColorSet: borderColorSet,
            rowData: settingsRowData,
          ),
          const SizedBox(height: 12),
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
