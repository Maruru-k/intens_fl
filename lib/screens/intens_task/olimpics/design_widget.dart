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
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 150,
                    child: Text(_country.country)),
                Container(
                    alignment: Alignment.center,
                    width: 36,
                    child: Text(_country.gold)),
                Container(
                    alignment: Alignment.center,
                    width: 36,
                    child: Text(_country.silver)),
                Container(
                    alignment: Alignment.center,
                    width: 36,
                    child: Text(_country.bronze)),
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    width: 36,
                    child: Text(_country.total)),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
