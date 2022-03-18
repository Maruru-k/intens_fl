import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red[300],
            ),
            Positioned(
              bottom: 10,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green[300],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue[300],
            ),
          ],
        ),
      ),
    );
  }
}
