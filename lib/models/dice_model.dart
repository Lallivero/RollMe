import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:roll_me/components/dice_button.dart';
import 'dart:math';

import 'package:roll_me/models/roll.dart';

class DiceModel extends ChangeNotifier {
  List<Roll> _previousRolls = [];
  Roll? _latestRoll;

  int _numDice = 1;

  void incrementDice() {
    _numDice++;
    notifyListeners();
  }

  void decrementDice() {
    _numDice--;
    notifyListeners();
  }

  void rollDice(int value) {
    final List<int> localResult = [];
    for (int i = 0; i < _numDice; i++) {
      localResult.add(Random().nextInt(value) + 1);
    }
    _latestRoll = Roll(
        value: "$_numDice" "d" "$value",
        result: localResult.fold(0, (previousValue, element) => previousValue! + element),
        rolls: localResult);
    _previousRolls.insert(0, _latestRoll!);

    notifyListeners();
  }

  void rerollDice() {
    int value = int.parse(_latestRoll!.value!.split('d')[1]);

    rollDice(value);
  }

  void resetHistory() {
    _previousRolls = [];

    notifyListeners();
  }

  UnmodifiableListView<Roll> get previousRolls {
    return UnmodifiableListView(_previousRolls);
  }

  Roll get latestRoll {
    return _latestRoll!;
  }

  int get numDice {
    return _numDice;
  }
}
