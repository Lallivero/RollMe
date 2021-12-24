import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/components/roll_tile.dart';
import 'package:roll_me/models/dice_model.dart';

class ResultList extends StatelessWidget {
  const ResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DiceModel>(
      builder: (context, diceModel, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final roll = diceModel.previousRolls[index];

            return RollTile(roll: roll);
          },
          itemCount: diceModel.previousRolls.length,
        );
      },
    );
  }
}
