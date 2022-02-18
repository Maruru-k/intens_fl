import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/noble_gas_model.dart';

class MyNobleGasRow extends StatelessWidget {
  final NobleGasModel _nobleGas;

  const MyNobleGasRow({Key? key, required NobleGasModel nobleGas})
      : _nobleGas = nobleGas,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70,
                alignment: Alignment.center,
                child: Text(
                  _nobleGas.atomicNumber,
                  style: const TextStyle(fontSize: 26),
                ),
              ),
              Container(
                width: 62,
                alignment: Alignment.center,
                child: Text(_nobleGas.symbol,
                    style: const TextStyle(fontSize: 35)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_nobleGas.name, style: const TextStyle(fontSize: 14)),
                    Text(
                      _nobleGas.atomicWeight,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white30),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white60),
        ],
      ),
    );
  }
}
