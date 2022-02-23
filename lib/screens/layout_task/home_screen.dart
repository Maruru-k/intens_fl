import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/project_data/navigation_data.dart';
import 'package:intens_fl/screens/layout_task/widgets/home_app_bar_widget.dart';

class TelegramHomeScreen extends StatelessWidget {
  const TelegramHomeScreen({Key? key}) : super(key: key);

  final String fullName = "Markus Katilov";
  final NetworkImage profileImage = const NetworkImage(
      "https://avatars.githubusercontent.com/u/97803700?v=4");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          HomeAppBarPanelWidget(profileImage: profileImage, fullName: fullName),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(NavigationKeys.settingsScreen);
          },
          child: const Text(
            "Telegram settings",
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
        ),
      ),
    );
  }
}
