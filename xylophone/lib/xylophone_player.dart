import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class XylophonePlay extends StatefulWidget {
  @override
  //arrow function use when have single line of return code like this
  _XylophonePlayState createState() => _XylophonePlayState();
}
class _XylophonePlayState extends State<XylophonePlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.lime,
        title:Text('Play me !',style: TextStyle(color:Colors.white),),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          keyPlay(color: Colors.blue,keyNumber: 1),
          keyPlay(color: Colors.greenAccent,keyNumber: 2),
          keyPlay(color: Colors.lightGreen,keyNumber: 3),
          keyPlay(color: Colors.indigoAccent,keyNumber: 4),
          keyPlay(color: Colors.purpleAccent,keyNumber: 5),
          keyPlay(color: Colors.redAccent,keyNumber: 6),
          keyPlay(color: Colors.amber,keyNumber: 7),
          keyPlay(color: Colors.orangeAccent,keyNumber: 8),
          keyPlay(color: Colors.teal,keyNumber: 9),
        ],)
        ),
    );
  }
  Widget keyPlay({Color color, int keyNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:() {
          //use audiocache cuz our audio is in our project
          final AudioCache play=AudioCache();
          //play a sounds
          play.play('key$keyNumber.wav');
        }, 
        child: null),
        );
  }
}