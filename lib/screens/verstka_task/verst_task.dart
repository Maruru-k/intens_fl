import 'package:flutter/material.dart';

class IntenseTaskVerst extends StatelessWidget {
  const IntenseTaskVerst({Key? key}) : super(key: key);

  final String name = "Harold";
  final String phoneNumber = "+7 938 200 3901";
  final String insta = "@hide_the_pain_harold";

  final TextStyle appBarTextStyle = const TextStyle(
    fontSize: 17,
    color: Colors.black38,
  );
  final TextStyle bodyTextStyle = const TextStyle(
    fontSize: 15,
    color: Colors.black45,
  );
  final BorderSide borderColorSet = const BorderSide(color: Color(0xffd3d3d9));

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
                  prefixIcon: const Icon(Icons.search),
                  // label: const Center(child: Text("Search")),
                  // labelStyle: myTextStyle,
                  hintText: "Search",
                  hintStyle: appBarTextStyle,
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.left,
                style: appBarTextStyle,
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
      body: Container(
        color: const Color(0xffededf3),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 92,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: BorderDirectional(bottom: borderColorSet)),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 13, bottom: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 33,
                    backgroundImage: NetworkImage(
                        "https://cdn.shazoo.ru/369683_NN2wYimi0M_9554_hide_pain_harold_title_red.jpg"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13, right: 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold)),
                        Text(phoneNumber, style: bodyTextStyle),
                        Text(insta, style: bodyTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 34),
            Container(
              height: 132,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: BorderDirectional(
                    bottom: borderColorSet,
                    top: borderColorSet,
                  )),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: const [
                    Icon(Icons.bookmark, color: Colors.blue, size: 29),
                    Text("Saved Massages"),
                  ]),
                  Row(children: const [
                    Icon(Icons.call, color: Colors.green, size: 29),
                    Text("Recent Calls"),
                  ]),
                  Row(children: [
                    Container(
                      height: 29,
                      width: 29,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(
                        Icons.devices_outlined,
                        color: Colors.white,
                        //size: 29,
                      ),
                    ),
                    Text("Devices"),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
