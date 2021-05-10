import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var dice1 = 1;
  var dice2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color(0xff512DA8),
        elevation: 3,
        centerTitle: true,
        title: Text(
          'Dicee',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xffFFC107),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Roll your dice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  fontFamily: 'Oswald',
                  color: Color(0xffFFC107),
                ),
              ),
              Text(
                'actually, click...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Oswald',
                  color: Color(0xffFFC107),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/dice$dice1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/dice$dice2.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Total: ${dice1 + dice2}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              fontFamily: 'Oswald',
              color: Color(0xffFFC107),
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }
}
