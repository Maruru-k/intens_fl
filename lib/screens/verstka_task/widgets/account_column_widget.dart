import 'package:flutter/material.dart';

import '../telegram_settings.dart';

class AccountColumnWidget extends StatelessWidget {
  final String? title;
  final List<AccountData> data;
  final BorderSide borderColorSet;

  final TextStyle rowsTextStyle =
      const TextStyle(fontSize: 19, color: Colors.black);
  final TextStyle titleTextStyle =
      const TextStyle(fontSize: 19, color: Color(0xff87c1ef));

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
              padding: const EdgeInsets.symmetric(vertical: 10),
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
      const TextStyle(fontSize: 20, color: Colors.white);
  final TextStyle bottomTextStyle =
      const TextStyle(fontSize: 16, color: Colors.grey);
  final BorderSide borderColorSet = const BorderSide(color: Colors.black);

  const _RowsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: data.onTapFunction,
      child: Row(children: [
        Expanded(
          child: Container(
            //height: rowData.setBorder ? 43 : 44,
            padding: const EdgeInsets.only(top: 15, bottom: 15),
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
