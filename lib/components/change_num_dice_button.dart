import 'package:flutter/material.dart';
import 'package:roll_me/constants.dart';

class ChangeNumDiceButton extends StatelessWidget {
  const ChangeNumDiceButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  final Function() onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: icon,
      elevation: 5,
      //fillColor: Colors.greenAccent,
    );
  }
}
