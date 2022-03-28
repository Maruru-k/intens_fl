import 'package:flutter/material.dart';

class MyStatefull extends StatefulWidget {
  int start, step;

  MyStatefull({Key? key, int? start, int? step})
      : start = start ?? 0,
        step = step ?? 1,
        super(key: key);

  @override
  _MyStatefullState createState() =>
      _MyStatefullState(start: start, step: step);
}

class _MyStatefullState extends State<MyStatefull> {
  int start;
  int step;

  _MyStatefullState({required this.start, required this.step});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          start += step;
          print('Нажали $start раз');
          setState(() {});
        },
        onLongPress: () {
          start -= step * 2;
          print('Нажали $start раз');
          setState(() {});
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        child: Text(
          'Нажали $start раз',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
