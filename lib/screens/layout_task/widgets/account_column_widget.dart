import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/project_data/rows_data.dart';

class AccountColumnWidget extends StatelessWidget {
  final String? title;
  final List<AccountData> data;
  final BorderSide borderColorSet;

  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 14, color: Colors.black);
  final TextStyle titleTextStyle = const TextStyle(
      fontSize: 14, color: Color(0xff87c1ef), fontWeight: FontWeight.w500);

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
          Container(
              padding: const EdgeInsets.only(top: 14),
              child: Text(title!, style: titleTextStyle)),
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
  final BorderSide borderSet =
      const BorderSide(color: Colors.black, width: 0.6);

  const _RowsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: data.onTapFunction,
      child: Row(children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 14, bottom: 14),
            decoration: data.setBorder
                ? BoxDecoration(border: BorderDirectional(bottom: borderSet))
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.text, style: rowsTextStyle),
                const SizedBox(height: 5),
                Text(data.bottomText, style: bottomTextStyle),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
