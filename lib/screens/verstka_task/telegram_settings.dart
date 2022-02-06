import 'package:flutter/material.dart';

class TelegramSettings extends StatelessWidget {
  const TelegramSettings({Key? key}) : super(key: key);

  final String name = "Harold";
  final String phoneNumber = "+7 938 200 3901";
  final String insta = "@hide_the_pain_harold";
  final NetworkImage profileImage = const NetworkImage(
      "https://cdn.shazoo.ru/369683_NN2wYimi0M_9554_hide_pain_harold_title_red.jpg");

  final TextStyle fileInfoTextStyle = const TextStyle(
    fontSize: 15,
    color: Colors.black38,
  );
  final TextStyle rowsTextStyle = const TextStyle(
    fontSize: 17,
    color: Colors.black,
  );
  final BorderSide borderColorSet = const BorderSide(color: Color(0xffd3d3d9));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 98,
        backgroundColor: const Color(0xfffa8c8c),
        titleTextStyle: const TextStyle(color: Colors.black38, fontSize: 17),
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text("Settings",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      color: Colors.black38,
                    )),
              ),
              const SizedBox(height: 15),
              Container(
                height: 36,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: const Color(0xfff18383),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            hintStyle:
                                TextStyle(fontSize: 17, color: Colors.black38),
                          ),
                          style: TextStyle(fontSize: 17, color: Colors.black38),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: const Color(0xffededf3),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
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
                    CircleAvatar(radius: 33, backgroundImage: profileImage),
                    Container(
                      margin: const EdgeInsets.only(left: 13, right: 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold)),
                          Text(phoneNumber, style: fileInfoTextStyle),
                          Text(insta, style: fileInfoTextStyle),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.chevron_right, color: Colors.black38)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 34),
            Container(
              height: 132,
              decoration: BoxDecoration(
                color: Colors.white,
                border: BorderDirectional(
                    bottom: borderColorSet, top: borderColorSet),
              ),
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  InkWell(
                    child: RowsWidget(
                      rowText: Text("Saved Massages", style: rowsTextStyle),
                      setBorder: true,
                      setIcons: Icons.bookmark,
                      iconColor: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: RowsWidget(
                      rowText: Text("Recent Calls", style: rowsTextStyle),
                      setBorder: true,
                      setIcons: Icons.call,
                      iconColor: Colors.green,
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: RowsWidget(
                      rowText: Text("Devices", style: rowsTextStyle),
                      setIcons: Icons.devices_outlined,
                      iconColor: Colors.orange,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowsWidget extends StatelessWidget {
  const RowsWidget({
    Key? key,
    bool? setBorder,
    required this.rowText,
    required this.setIcons,
    required this.iconColor,
  })  : _serBorder = setBorder ?? false,
        super(key: key);

  final bool _serBorder;
  final Text rowText;
  final IconData setIcons;
  final Color iconColor;

  final BorderSide borderColorSet = const BorderSide(color: Color(0xffd3d3d9));

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: 29,
          width: 29,
          decoration: BoxDecoration(
              color: iconColor, borderRadius: BorderRadius.circular(6)),
          child: Icon(setIcons, color: Colors.white)),
      Expanded(
        child: Container(
          height: _serBorder ? 43 : 44,
          margin: const EdgeInsets.only(left: 15),
          decoration: _serBorder
              ? BoxDecoration(border: BorderDirectional(bottom: borderColorSet))
              : null,
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                rowText,
                const Spacer(),
                const Icon(Icons.chevron_right, color: Colors.black38),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
