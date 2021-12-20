import 'package:flutter/material.dart';
import 'package:roll_me/constants.dart';

import 'package:roll_me/screens/result_screen.dart';

import 'dice_screen.dart';

class SwipeTabBar extends StatefulWidget {
  const SwipeTabBar({Key? key}) : super(key: key);

  @override
  _SwipeTabBarState createState() => _SwipeTabBarState();
}

class _SwipeTabBarState extends State<SwipeTabBar> {
  final _pageViewController = PageController();

  int _activePage = 0;

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RollMe'),
        backgroundColor: Colors.greenAccent,
      ),
      body: PageView(
        controller: _pageViewController,
        children: const <Widget>[
          DiceScreen(),
          ResultScreen(),
        ],
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        currentIndex: _activePage,
        onTap: (index) {
          _pageViewController.animateToPage(index,
              duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.casino,
                color: Colors.black,
              ),
              label: "Dice",
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
            icon: Text("PLACEHOLDER"),
            label: "History",
          ),
        ],
      ),
    );
  }
}
