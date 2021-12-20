import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/models/dice_model.dart';

class RollTile extends StatelessWidget {
  const RollTile(
      {Key? key, required this.rolls, required this.result, required this.value})
      : super(key: key);
  final List<int> rolls;
  final int result;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$result',
              style: const TextStyle(color: Colors.white),
            ),
            Column(
              children: rolls
                  .map((e) => Text(
                        '$e',
                        style: const TextStyle(color: Colors.white),
                      ))
                  .toList(),
            ),
            Text(
              '${context.watch<DiceModel>().numDice}d$value',
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
