import 'package:flutter/material.dart';
import 'olympics22.dart';

class MyDesignWidget extends StatelessWidget {
  final Country _country;

  const MyDesignWidget({
    Key? key,
    required Country country,
  })  : _country = country,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle olympicsTextStyle = const TextStyle(fontSize: 20);

    Widget _bronzeChild = _country.bronze.toLowerCase() != "bronze"
        ? Text(_country.bronze, style: olympicsTextStyle)
        : const IconWidget(
            icon: Icons.looks_3_outlined, color: Colors.deepOrangeAccent);

    Widget _silverChild = _country.silver.toLowerCase() != "silver"
        ? Text(_country.silver, style: olympicsTextStyle)
        : const IconWidget(
            icon: Icons.looks_two_outlined, color: Colors.white54);

    Widget _goldChild = _country.gold.toLowerCase() != "gold"
        ? Text(_country.gold, style: olympicsTextStyle)
        : const IconWidget(icon: Icons.looks_one_outlined, color: Colors.amber);

    Widget _totalChild = _country.total.toLowerCase() != "total"
        ? Text(_country.total, style: olympicsTextStyle)
        : const IconWidget(
            icon: Icons.pin_outlined, color: Colors.lightBlueAccent);

    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 150,
                    child: Text(_country.country, style: olympicsTextStyle)),
                Container(
                  width: 46,
                  alignment: Alignment.center,
                  child: _goldChild,
                ),
                Container(
                  width: 46,
                  alignment: Alignment.center,
                  child: _silverChild,
                ),
                Container(
                  width: 46,
                  alignment: Alignment.center,
                  child: _bronzeChild,
                ),
                const Spacer(),
                Container(
                    width: 36, alignment: Alignment.center, child: _totalChild),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;

  const IconWidget({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: Icon(icon),
    );
  }
}
