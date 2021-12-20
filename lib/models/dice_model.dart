import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:roll_me/components/dice_button.dart';
import 'dart:math';

import 'package:roll_me/models/roll.dart';

class DiceModel extends ChangeNotifier {
  final List<Roll> _previousRolls = [];

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
    _previousRolls.insert(
        0,
        Roll(
            value: value,
            result:
                localResult.fold(0, (previousValue, element) => previousValue! + element),
            rolls: localResult));
    notifyListeners();
  }

  void rerollDice() {
    final List<int> localResult = [];
    int value = _previousRolls[0].value!;
    for (int i = 0; i < _numDice; i++) {
      localResult.add(Random().nextInt(value) + 1);
    }
    _previousRolls.insert(
        0,
        Roll(
            value: value,
            result:
                localResult.fold(0, (previousValue, element) => previousValue! + element),
            rolls: localResult));
    notifyListeners();
  }

  UnmodifiableListView<Roll> get previousRolls {
    return UnmodifiableListView(_previousRolls);
  }

  int get numDice {
    return _numDice;
  }
}
