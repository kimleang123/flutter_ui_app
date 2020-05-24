import 'package:flutter/material.dart';

// main function is a starting point of the app.
//=> equal {},
// use materialApp mean can access every material in flutter
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I am rich.'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'lib/images/jj.jpg',
                height: 100,
                width: 100,
              ), //fretch image from floder in a project )
              Image(
                height: 100,
                width: 100,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'), //fetch img from the internet
              ),
            ],
          ),
        ),
      ),
    );
