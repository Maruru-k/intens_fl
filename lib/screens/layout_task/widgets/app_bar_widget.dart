import 'package:flutter/material.dart';
import 'package:intens_fl/screens/layout_task/widgets/tool_bar_widget.dart';

class AppBarPanelWidget extends StatelessWidget with PreferredSizeWidget {
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
    fontSize: 12,
    color: Colors.white38,
  );

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      toolbarHeight: 144,
      automaticallyImplyLeading: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      titleTextStyle: const TextStyle(color: Colors.black38, fontSize: 17),
      flexibleSpace: Container(
        margin: const EdgeInsets.only(bottom: 12),
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          height: 80,
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 18, right: 20),
                  child:
                      CircleAvatar(radius: 30, backgroundImage: _profileImage)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _fullName,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  const Text("в сети", style: fileInfoTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
      leading: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
          iconSize: 24,
        ),
      ),
      actions: [
        ToolBarWidget(
            icon: Icons.qr_code_outlined,
            onPressedFunction: () {
              Navigator.of(context).pushNamed("/qr_screen");
            }),
        ToolBarWidget(
          icon: Icons.search_outlined,
          onPressedFunction: () {},
        ),
        ToolBarWidget(
          icon: Icons.more_vert,
          onPressedFunction: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size(double.infinity, 144);
  }
}
