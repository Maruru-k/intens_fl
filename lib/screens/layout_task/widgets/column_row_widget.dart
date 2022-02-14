import 'package:flutter/material.dart';

import '../telegram_settings.dart';

class ColumnRowsWidget extends StatelessWidget {
  final String? title;
  final List<RowData> rowData;
  final BorderSide borderColorSet;

  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 19, color: Colors.black);
  final TextStyle titleTextStyle =
      const TextStyle(fontSize: 19, color: Color(0xff87c1ef));

  const ColumnRowsWidget({
    Key? key,
    String? title,
    required this.rowData,
    required this.borderColorSet,
  })  : title = title ?? "",
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1d2732),
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(title!, style: titleTextStyle)),
          Column(
              children: rowData
                  .map((RowData data) => _RowsWidget(rowData: data))
                  .toList()),
        ],
      ),
    );
  }
}

class _RowsWidget extends StatelessWidget {
  final RowData rowData;
  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 20, color: Colors.white);
  final BorderSide borderColorSet = const BorderSide(color: Colors.black);

  const _RowsWidget({Key? key, required this.rowData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: rowData.onTapFunction,
      child: Row(children: [
        Icon(
          rowData.icon,
          color: rowData.iconColor,
          size: 35,
        ),
        Expanded(
          child: Container(
            //height: rowData.setBorder ? 43 : 44,
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            decoration: rowData.setBorder
                ? BoxDecoration(
                    border: BorderDirectional(bottom: borderColorSet))
                : null,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Text(rowData.text, style: rowsTextStyle),
                  const Spacer(),
                  Icon(Icons.chevron_right, color: rowData.iconColor),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
