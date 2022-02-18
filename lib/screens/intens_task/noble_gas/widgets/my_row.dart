import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/noble_gas_model.dart';

class MyNobleGasRow extends StatelessWidget {
  final NobleGasModel _nobleGas;
  final TextStyle gasRowStyle = const TextStyle(fontSize: 20);

  const MyNobleGasRow({Key? key, required NobleGasModel nobleGas})
      : _nobleGas = nobleGas,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 62,
            alignment: Alignment.center,
            child: Text(
              _nobleGas.atomicNumber,
              style: gasRowStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: 72,
            alignment: Alignment.center,
            child: Text(_nobleGas.symbol, style: gasRowStyle),
          ),
          Container(
            width: 110,
            alignment: Alignment.center,
            child: Text(_nobleGas.name, style: gasRowStyle),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(_nobleGas.atomicWeight, style: gasRowStyle),
            ),
          ),
        ],
      ),
    );
  }
}
