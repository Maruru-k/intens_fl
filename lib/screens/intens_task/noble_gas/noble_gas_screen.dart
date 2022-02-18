import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/noble_gas_ribbon.dart';

class NobleGasScreen extends StatelessWidget {
  const NobleGasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141e28),
      appBar: AppBar(
        backgroundColor: const Color(0xff061a86),
        centerTitle: true,
        title: const Text("Список Благородных Газов"),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: const Text("Благородные газы",
                  style: TextStyle(fontSize: 36))),
          NobleGasRibbon(),
        ],
      ),
    );
  }
}
