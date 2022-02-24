import 'package:flutter/material.dart';
import 'package:intens_fl/layout_task/data_project/rows_data.dart';

class PopupMenuBuildItem{
  static PopupMenuItem<RowData> popupBuildItem(RowData item) => PopupMenuItem(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(item.icon),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(item.text),
          ),
        ],
      ),
    ),
  );
}