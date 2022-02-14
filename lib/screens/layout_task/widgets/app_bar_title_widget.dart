import 'package:flutter/material.dart';

class AppBarTitlePanelWidget extends StatelessWidget {
  const AppBarTitlePanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text("Settings",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 17,
                color: Colors.white60,
              )),
        ),
        InkWell(
          onTap: () {
            print("Edit");
          },
          child: const SizedBox(
            child: Text("Edit",
                style: TextStyle(fontSize: 17, color: Color(0xFF037EE5))),
          ),
        )
      ],
    );
  }
}