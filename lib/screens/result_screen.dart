import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/components/result_list.dart';
import 'package:roll_me/models/dice_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roll Results'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              child: ResultList(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(0.0, 1.0),
                    )
                  ]),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<DiceModel>().rerollDice();
                    },
                    child: const Icon(
                      Icons.casino,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(bottom: 20),
                  //   child: Text(
                  //     'Reroll',
                  //     style: TextStyle(fontSize: 20.0, color: Colors.white),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
