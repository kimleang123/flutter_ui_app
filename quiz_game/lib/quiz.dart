import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text(
          'Quiz time !',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 2,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              //make width responsive or make width bigger as much as it can
              width: MediaQuery.of(context).size.width,
              height: 600,
            ),
            botton(name: 'True', color: Colors.blueAccent),
            SizedBox(
              height: 5,
            ),
            botton(name: 'Fail', color: Colors.redAccent),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Widget botton({String name, Color color}) {
    return Expanded(
          child: FlatButton(
          color: color,
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
      ),
    );
  }
}
