import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List<int> dices = [1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Dice Game"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/dice${dices[0]}.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Image.asset('images/dice${dices[1]}.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 40),
              child: Text(
                "${dices.reduce((value, element) {
                  return value + element;
                })}",
                style: TextStyle(fontSize: 40),
              ),
            ),
            ButtonTheme(
              minWidth: 100,
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    dices[0] = Random().nextInt(6) + 1;
                    dices[1] = Random().nextInt(6) + 1;
                  });
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
