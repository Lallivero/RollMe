import 'package:flutter/material.dart';
import 'package:roll_me/constants.dart';
import 'package:roll_me/models/dice_model.dart';

import 'package:provider/provider.dart';

import 'package:roll_me/screens/result_screen.dart';

class DiceButton extends StatelessWidget {
  const DiceButton({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<DiceModel>().rollDice(value);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(),
          ),
        );
      },
      child: Image.asset('images/d$value.png'),
    );
  }
}
