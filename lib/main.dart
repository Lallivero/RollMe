import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roll_me/screens/dice_screen.dart';

import 'package:roll_me/screens/swipe_tab_bar.dart';

import 'models/dice_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DiceModel>(
      create: (_) => DiceModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DiceScreen(),
      ),
    );
  }
}
