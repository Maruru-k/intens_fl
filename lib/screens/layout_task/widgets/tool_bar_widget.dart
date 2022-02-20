import 'package:flutter/material.dart';

class ToolBarWidget extends StatelessWidget {
  final IconData _icon;
  final Function() _onPressedFunction;
  final Alignment _align;

  const ToolBarWidget({
    Key? key,
    Alignment? align,
    required IconData icon,
    required Function() onPressedFunction,
  })  : _icon = icon,
        _align = align ?? Alignment.topRight,
        _onPressedFunction = onPressedFunction,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: _align,
      child: IconButton(
        onPressed: _onPressedFunction,
        icon: Icon(_icon),
        iconSize: 24,
      ),
    );
  }
}
