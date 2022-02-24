import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Scrollbar(
                radius: const Radius.circular(50),
                isAlwaysShown: true,
                thickness: 10,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                      right: 11,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        height: 70,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            color: const Color(0xfff18383),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.black38),
                                  ),
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black38),
                                ),
                              ),
                            ),
                            const Spacer()
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 70,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            color: const Color(0xff490a0a),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.black38),
                                  ),
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black38),
                                ),
                              ),
                            ),
                            const Spacer()
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 100,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            color: const Color(0xff83b5f1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.black38),
                                  ),
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black38),
                                ),
                              ),
                            ),
                            const Spacer()
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 150,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            color: const Color(0xffa9c641),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.black38),
                                  ),
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black38),
                                ),
                              ),
                            ),
                            const Spacer()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: const Color(0xfff18383),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Spacer(),
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
                  const Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
