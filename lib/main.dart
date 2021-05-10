import 'package:dices/pages/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice app',
      theme: ThemeData(
        primaryColor: Color(0xff512DA8),
      ),
      home: DicePage(),
    );
  }
}
