import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  //for declare var
  int leftnumberDice = 1;
  int rightnumberDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Game',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey[300],
      body: Center(
        child: Row(
          children: <Widget>[
            dice1(Image.asset('images/dice$leftnumberDice.png')),
            dice1(Image.asset('images/dice$rightnumberDice.png')),
          ],
        ),
      ),
    );
  }

  Widget dice1(Image i) {
    return Expanded(
      //use flatbutton cuz it is a button filled full of expanded
      child: FlatButton(
        onPressed: () {
          //when we pressed => it will rebuild a stateful => it will update a numberDice
          setState(() {
            //random number between (0-5)+1
            rightnumberDice = Random().nextInt(5) + 1;
            leftnumberDice = Random().nextInt(6) + 1;
          });
        },
        child: i,
      ),
    );
  }
}
