import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:roll_me/models/dice_model.dart';
import 'package:roll_me/models/roll.dart';

import '../constants.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({Key? key, required this.roll}) : super(key: key);
  final Roll roll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '${roll.result}',
          textAlign: TextAlign.center,
          style: const TextStyle(color: kTextColor, fontSize: 20),
        ),
        Text(
          roll.value!,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kTextColor, fontSize: 20),
        ),
        Column(
          children: roll.rolls!
              .map((e) => Text(
                    '$e',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: kTextColor,
                      fontSize: 20,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
