import 'package:flutter/material.dart';
import 'bmi1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ThemeData is a class for determine color in the app
      theme: ThemeData(
        //set color backgroud for app bar
        primaryColor: Color(0xFF04040B),
        //set background color for scaffold widget
        scaffoldBackgroundColor: Color(0xFF04040B),
      ),
      home: BmiCalculator(),
    );
  }
}
