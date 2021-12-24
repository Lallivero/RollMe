import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/dice_button.dart';

//colors
// const Color kPrimary = Colors.grey;
const kPrimary = Color(0xffd0d0d0);
const Color kSecondary = Colors.blueGrey;
const Color kTextColor = Colors.white;

//shadow decoration
BoxDecoration kShadowDecoration = BoxDecoration(
    color: kSecondary,
    borderRadius: BorderRadius.circular(5),
    boxShadow: const [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 3,
        offset: Offset(0.0, 1.0),
      )
    ]);

const List<DiceButton> kDice = [
  DiceButton(
    value: 4,
  ),
  DiceButton(
    value: 6,
  ),
  DiceButton(
    value: 8,
  ),
  DiceButton(
    value: 10,
  ),
  DiceButton(
    value: 12,
  ),
  DiceButton(
    value: 20,
  ),
];
