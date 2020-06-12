import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import 'choice_branch.dart';
import 'choice_branch.dart';

ChoiceBranch choiceBranch = new ChoiceBranch();

class Choice1 extends StatefulWidget {
  @override
  _Choice1State createState() => _Choice1State();
}

class _Choice1State extends State<Choice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choice",
          style: TextStyle(
              color: Colors.white,fontSize: 25.0),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/orian1.jpg"), fit: BoxFit.fitHeight),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 300.0,
              ),
              Text(
                choiceBranch.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
              Expanded(
                child: FlatButton(
                  child: Text(choiceBranch.getChoice1(), style: TextStyle(fontSize:20.0,),),
                  color: Colors.deepPurple[200],
                  onPressed: () {
                    setState(() {
                      choiceBranch.nextQuestionBranch(1);
                      // choiceBranch.nextIndex();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                // set visible button
                child: Visibility(
                  //visible return type boolean
                  visible: choiceBranch.buttonShouldBeVisible(),
                  child: FlatButton(
                    child: Text(choiceBranch.getChoice2() ,style: TextStyle(fontSize:20.0,)),
                    color: Colors.deepPurpleAccent[100],
                    onPressed: () {
                      setState(
                        () {
                          choiceBranch.nextQuestionBranch(2);
                          // choiceBranch.nextIndex();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
