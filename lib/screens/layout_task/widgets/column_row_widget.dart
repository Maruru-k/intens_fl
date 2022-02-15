import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/rows_data.dart';

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
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 24, bottom: 16),
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
  final BorderSide borderSet =
      const BorderSide(color: Colors.black, width: 0.8);

  const _RowsWidget({Key? key, required this.rowData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: rowData.onTapFunction,
      child: Row(children: [
        Icon(
          rowData.icon,
          color: rowData.iconColor,
          size: 38,
        ),
        Expanded(
          child: Container(
            //height: rowData.setBorder ? 43 : 44,
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.only(top: 18, bottom: 18),
            decoration: rowData.setBorder
                ? BoxDecoration(border: BorderDirectional(bottom: borderSet))
                : null,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text(rowData.text, style: rowsTextStyle),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
