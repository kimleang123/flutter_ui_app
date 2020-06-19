import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4C5065),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4C5065),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF4C5065),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4C5065),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4C5065),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
           Container(
              width: double.infinity,
              height:90,
              color: Colors.pink,
            ),
        ],
      ),
    );
  }
}
