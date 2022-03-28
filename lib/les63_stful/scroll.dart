import 'package:flutter/material.dart';

class ScrollText extends StatefulWidget {
  const ScrollText({Key? key}) : super(key: key);

  @override
  State<ScrollText> createState() => _ScrollTextState();
}

class _ScrollTextState extends State<ScrollText> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of lines'),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) =>
                    ListElem(i: index),
                separatorBuilder: (ctx, index) => const Divider(
                  thickness: 0.8,
                  height: 4,
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.yellow[300],
            )
          ],
        ),
        Positioned(
          right: 8,
          bottom: 35,
          child: ElevatedButton(
            onPressed: () {
              _counter++;
              setState(() {});
            },
            onLongPress: () {
              _counter = 0;
              setState(() {});
            },
            child: Text(
              '+$_counter',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}

class ListElem extends StatelessWidget {
  const ListElem({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.only(left: 17),
      child: Text(
        'Line under number $i',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
