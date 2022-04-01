import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent.shade200,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Pres me, peace... presssss..",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
          ),
        ),
      ),
    );
  }
}
