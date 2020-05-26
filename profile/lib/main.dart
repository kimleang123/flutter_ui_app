//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/login.dart';
import 'package:profile/profile.dart';
import 'package:profile/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
