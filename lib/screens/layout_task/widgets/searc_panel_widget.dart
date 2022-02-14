import 'package:flutter/material.dart';

class SearchPanelWidget extends StatelessWidget {
  const SearchPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          color: const Color(0xfff18383),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 17, color: Colors.black38),
                ),
                style: TextStyle(fontSize: 17, color: Colors.black38),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}