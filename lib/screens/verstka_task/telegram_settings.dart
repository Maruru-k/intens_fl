import 'package:flutter/material.dart';
import 'package:intens_fl/screens/verstka_task/widgets/app_bar_title_widget.dart';
import 'package:intens_fl/screens/verstka_task/widgets/searc_panel_widget.dart';

class TelegramSettings extends StatelessWidget {
  const TelegramSettings({Key? key}) : super(key: key);

  final String name = "Harold";
  final String phoneNumber = "+7 938 200 3901";
  final String insta = "@hide_the_pain_harold";
  final NetworkImage profileImage = const NetworkImage(
      "https://avatars.githubusercontent.com/u/97803700?v=4");

  final TextStyle fileInfoTextStyle = const TextStyle(
    fontSize: 15,
    color: Colors.black38,
  );
  final BorderSide borderColorSet = const BorderSide(color: Color(0xffd3d3d9));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 98,
        backgroundColor: const Color(0xfffa8c8c),
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
      body: Container(
        color: const Color(0xffededf3),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 92,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: BorderDirectional(bottom: borderColorSet)),
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
                          Expanded(
                              child: Text(insta, style: fileInfoTextStyle)),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.chevron_right, color: Colors.black38)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 34),
            RowsColumnWidget(borderColorSet: borderColorSet),
          ],
        ),
      ),
    );
  }
}

class RowData {
  final IconData icon;
  final Color iconColor;
  final String text;
  bool setBorder;

  RowData(
      {required this.icon,
      required this.iconColor,
      required this.text,
      this.setBorder = false});
}

class RowsColumnWidget extends StatelessWidget {
  RowsColumnWidget({Key? key, required this.borderColorSet}) : super(key: key);

  final BorderSide borderColorSet;
  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 17, color: Colors.black);

  final List<RowData> rowData = [
    RowData(
      icon: Icons.bookmark,
      iconColor: Colors.blue,
      text: "Saved Massages",
      setBorder: true,
    ),
    RowData(
      icon: Icons.call,
      iconColor: Colors.green,
      text: "Recent Calls",
      setBorder: true,
    ),
    RowData(
      icon: Icons.devices_outlined,
      iconColor: Colors.orange,
      text: "Devices",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      decoration: BoxDecoration(
        color: Colors.white,
        border: BorderDirectional(bottom: borderColorSet, top: borderColorSet),
      ),
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children:
            rowData.map((RowData data) => _RowsWidget(rowData: data)).toList(),
      ),
    );
  }
}

class _RowsWidget extends StatelessWidget {
  const _RowsWidget({Key? key, required this.rowData}) : super(key: key);

  final RowData rowData;
  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 17, color: Colors.black);
  final BorderSide borderColorSet = const BorderSide(color: Color(0xffd3d3d9));

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: 29,
          width: 29,
          decoration: BoxDecoration(
              color: rowData.iconColor, borderRadius: BorderRadius.circular(6)),
          child: Icon(rowData.icon, color: Colors.white)),
      Expanded(
        child: Container(
          height: rowData.setBorder ? 43 : 44,
          margin: const EdgeInsets.only(left: 15),
          decoration: rowData.setBorder
              ? BoxDecoration(border: BorderDirectional(bottom: borderColorSet))
              : null,
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Text(rowData.text, style: rowsTextStyle),
                const Spacer(),
                const Icon(Icons.chevron_right, color: Colors.black38),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
