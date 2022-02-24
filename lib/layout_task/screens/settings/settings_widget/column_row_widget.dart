import 'package:flutter/material.dart';
import 'package:intens_fl/layout_task/data_project/rows_data.dart';

class ColumnRowsWidget extends StatelessWidget {
  final String? title;
  final List<RowData> rowData;
  final BorderSide? borderColorSet;

  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 14, color: Colors.black);
  final TextStyle titleTextStyle = const TextStyle(
      fontSize: 14, color: Color(0xff87c1ef), fontWeight: FontWeight.w500);

  const ColumnRowsWidget({
    Key? key,
    String? title,
    required this.rowData,
    this.borderColorSet,
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
              padding: const EdgeInsets.only(top: 14),
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
      const TextStyle(fontSize: 14, color: Colors.white);
  final BorderSide borderSet =
      const BorderSide(color: Colors.black, width: 0.6);

  const _RowsWidget({Key? key, required this.rowData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: rowData.onTapFunction,
      child: Row(children: [
        Icon(
          rowData.icon,
          color: rowData.iconColor,
          size: 28,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.only(top: 14, bottom: 14),
            decoration: rowData.setBorder
                ? BoxDecoration(border: BorderDirectional(bottom: borderSet))
                : null,
            child: Row(
              children: [
                Text(rowData.text, style: rowsTextStyle),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
