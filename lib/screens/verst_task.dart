import 'package:flutter/material.dart';

class IntenseTaskVerst extends StatelessWidget {
  const IntenseTaskVerst({Key? key}) : super(key: key);

  final TextStyle myTextStyle = const TextStyle(
    fontSize: 17,
    color: Colors.black38,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 98,
        backgroundColor: const Color(0xfffa8c8c),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text("Settings")),
            Container(
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xfff18383),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  // label: const Center(child: Text("Search")),
                  // labelStyle: myTextStyle,
                  hintText: "Search",
                  hintStyle: myTextStyle,
                  border: InputBorder.none,
                ),
                // textAlign: TextAlign.center,
                style: myTextStyle,
              ),
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black38,
          fontSize: 17,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 92,
        child: Row(
          children: [
            Image.network(
              "https://cdn.shazoo.ru/369683_NN2wYimi0M_9554_hide_pain_harold_title_red.jpg",
              height: 66,
              width: 66,
            ),
          ],
        ),
      ),
    );
  }
}
