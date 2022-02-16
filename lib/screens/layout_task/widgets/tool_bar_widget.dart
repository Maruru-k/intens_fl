import 'package:flutter/material.dart';

class ToolBarWidget extends StatelessWidget {
  final IconData _icon;
  final Function() _onPressedFunction;

  const ToolBarWidget({
    Key? key,
    required IconData icon,
    required Function() onPressedFunction,
  })  : _icon = icon,
        _onPressedFunction = onPressedFunction,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: _onPressedFunction,
        icon: Icon(_icon),
        iconSize: 24,
      ),
    );
  }
}