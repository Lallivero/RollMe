import 'package:flutter/material.dart';
import 'package:roll_me/components/change_num_dice_button.dart';
import 'package:roll_me/components/dice_button.dart';
import 'package:roll_me/models/dice_model.dart';

import 'package:provider/provider.dart';
import 'package:roll_me/screens/result_screen.dart';

import '../constants.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        title: const Text(
          'RollMe',
          style: TextStyle(color: kTextColor),
        ),
        backgroundColor: kSecondary,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.playlist_play,
              color: kTextColor,
              size: 40,
            ),
          )
        ],
      ),
      // backgroundColor: lilac,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: kDice,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: kSecondary,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(0.0, 1.0),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChangeNumDiceButton(
                    onPressed: () {
                      context.read<DiceModel>().decrementDice();
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: kTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Text(
                      '${context.watch<DiceModel>().numDice}',
                      style: const TextStyle(fontSize: 30, color: kTextColor),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ChangeNumDiceButton(
                    onPressed: () {
                      context.read<DiceModel>().incrementDice();
                    },
                    icon: const Icon(
                      Icons.add,
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
