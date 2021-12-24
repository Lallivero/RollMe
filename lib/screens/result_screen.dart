import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/components/header_row.dart';
import 'package:roll_me/components/header_tile.dart';
import 'package:roll_me/components/result_list.dart';
import 'package:roll_me/components/result_row.dart';
import 'package:roll_me/models/dice_model.dart';

import '../constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        foregroundColor: kTextColor,
        backgroundColor: kSecondary,
        title: const Text(
          'Roll Results',
          style: TextStyle(color: kTextColor),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<DiceModel>().resetHistory();
            },
            child: const Icon(
              Icons.delete,
              color: kTextColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: kShadowDecoration,
              child: const HeaderTile(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Expanded(
              child: ResultList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: kShadowDecoration,
              child: TextButton(
                onPressed: () {
                  context.read<DiceModel>().rerollDice();
                },
                child: const Icon(
                  Icons.casino,
                  size: 60,
                  color: kTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
