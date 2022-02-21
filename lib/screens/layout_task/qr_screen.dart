import 'package:flutter/material.dart';

class QrCodeScreenWidget extends StatelessWidget {
  const QrCodeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset("lib/assets/image/qr_code.png")),
      ),
    );
  }
}
