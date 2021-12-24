import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/components/result_row.dart';
import 'package:roll_me/constants.dart';
import 'package:roll_me/models/dice_model.dart';
import 'package:roll_me/models/roll.dart';

class RollTile extends StatelessWidget {
  const RollTile({Key? key, required this.roll}) : super(key: key);
  final Roll roll;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kSecondary,
      child: ListTile(
        title: ResultRow(
          roll: roll,
        ),
      ),
    );
  }
}
