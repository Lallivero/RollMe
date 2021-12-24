import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text(
              'Total',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
            Text(
              'Roll',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              'Selected',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
            Text(
              'Dice',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              'Dice',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
            Text(
              'Rolls',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor, fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
