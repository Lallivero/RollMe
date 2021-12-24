import 'package:flutter/material.dart';
import 'package:roll_me/components/header_row.dart';

import '../constants.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      color: kSecondary,
      child: ListTile(
        title: HeaderRow(),
      ),
    );
  }
}
