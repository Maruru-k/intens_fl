import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/rows_data.dart';

class AccountColumnWidget extends StatelessWidget {
  final String? title;
  final List<AccountData> data;
  final BorderSide borderColorSet;

  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 14, color: Colors.black);
  final TextStyle titleTextStyle =
      const TextStyle(fontSize: 13, color: Color(0xff87c1ef));

  const AccountColumnWidget({
    Key? key,
    String? title,
    required this.data,
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
          const SizedBox(height: 22),
          Text(title!, style: titleTextStyle),
          Column(
              children: data
                  .map((AccountData data) => _RowsWidget(data: data))
                  .toList()),
        ],
      ),
    );
  }
}

class _RowsWidget extends StatelessWidget {
  final AccountData data;
  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 14, color: Colors.white);
  final TextStyle bottomTextStyle =
      const TextStyle(fontSize: 12, color: Colors.grey);
  final BorderSide borderColorSet =
      const BorderSide(color: Colors.black, width: 0.6);

  const _RowsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: data.onTapFunction,
      child: Row(children: [
        Expanded(
          child: Container(
            //height: rowData.setBorder ? 43 : 44,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: data.setBorder
                ? BoxDecoration(
                    border: BorderDirectional(bottom: borderColorSet))
                : null,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.text, style: rowsTextStyle),
                  const SizedBox(height: 5),
                  Text(data.bottomText, style: bottomTextStyle),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
