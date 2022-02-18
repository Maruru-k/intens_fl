import 'package:flutter/material.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/my_row.dart';
import 'package:intens_fl/screens/intens_task/noble_gas/widgets/noble_gas_model.dart';

List<List<String>> nobleGases = [
  ["Number", "Symbol", "Name", "Standard atomic weight"],
  ['2', 'He', 'Гелий ', '4.002602(2) '],
  ['10', 'Ne', 'Неон ', '20.1797(6) '],
  ['18', 'Ar', 'Аргон ', '39.948(1) '],
  ['36', 'Kr', 'Криптон ', '83.80(1) '],
  ['54', 'Xe', 'Ксенон ', '131.29(2) '],
  ['86', 'Rn', 'Радон ', '(222)'],
  ['118', 'Oq', 'Оганесон ', '(294)']
];

class NobleGasRibbon extends StatelessWidget {
  List<NobleGasModel> nobleGasList = nobleGases
      .map((e) => NobleGasModel(
          atomicNumber: e[0], symbol: e[1], name: e[2], atomicWeight: e[3]))
      .toList();

  NobleGasRibbon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            MyNobleGasRow(nobleGas: nobleGasList[0]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[1]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[2]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[3]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[4]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[5]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[6]),
            const Divider(color: Colors.white60),
            MyNobleGasRow(nobleGas: nobleGasList[7]),
          ],
        ));
  }
}
