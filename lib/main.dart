import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.light(primary: Colors.teal)),
      home: SafeArea(
        child: Scaffold(
          body: const MyStatefulWidget(),
          appBar: AppBar(
            title: const Center(child: Text("Hell")),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _i = 0;
  int _selectIndex = 0;

  void _increment() {
    setState(() {
      _i++;
    });
  }

  void _decrement() {
    setState(() {
      _i--;
    });
  }

  void _zero() {
    setState(() {
      _i = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 15,
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            Text(
              "$_i",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _decrement, child: const Text("Minus")),
                const Text("   "),
                ElevatedButton(
                    onPressed: _increment, child: const Text("Plus")),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _zero,
        tooltip: "but",
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.brightness_7_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.adb_outlined,),
            label: "Adb",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Add",
          ),
        ],
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }
}
