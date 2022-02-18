import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/noble_gas_ribbon.dart';

class NobleGasScreen extends StatelessWidget {
  const NobleGasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141e28),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color(0xff061a86),
        title: const Text("Благородные газы"),
      ),
      body: NobleGasRibbon(),
    );
  }
}
