import 'package:flutter/material.dart';

class ScrollText extends StatelessWidget {
  final List<Widget> wid = [];

  ScrollText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 100; i += 1) {
      wid.add(
        Container(
          height: 30,
          padding: const EdgeInsets.only(left: 17),
          child: Text(
            "Line under number $i",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('List of lines'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: wid.length,
              itemBuilder: (ctx, i) => Container(
                alignment: Alignment.centerLeft,
                child: wid[i],
              ),
              separatorBuilder: (ctx, i) => Divider(
                color: Colors.black.withOpacity(.5),
                thickness: .7,
              ),
            ),
          ),
          Container(
            height: 70,
            color: Colors.yellow[200],
          )
        ],
      ),
    );
  }
}
