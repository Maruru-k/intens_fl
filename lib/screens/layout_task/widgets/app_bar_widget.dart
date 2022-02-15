import 'package:flutter/material.dart';

class AppBarPanelWidget extends StatelessWidget {
  final NetworkImage _profileImage;
  final String _fullName;

  const AppBarPanelWidget({
    Key? key,
    required NetworkImage profileImage,
    required String fullName,
  })  : _profileImage = profileImage,
        _fullName = fullName,
        super(key: key);

  static const TextStyle fileInfoTextStyle = TextStyle(
    fontSize: 18,
    color: Colors.white38,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child:
                    CircleAvatar(radius: 40, backgroundImage: _profileImage)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _fullName,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                const Text("в сети", style: fileInfoTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
