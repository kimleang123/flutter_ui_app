import 'package:flutter/material.dart';
import 'questionAbtraction.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//create a object of QuestionAbtraction
QuestionAbtraction questionAbtraction=QuestionAbtraction();
class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //method for checking user reach to the last question or not
  void isFinish(){
    if(score.length==questionAbtraction.questionDisplay.length){
      //make an alert message by use rflutter_alert package
      Alert(context: context, title: "You did a last question", desc: "You're cool").show();
      //reset an index to 0
      questionAbtraction.setIndexTozero();
      //clear all data in list score
      score.clear();
    }else{
      return;
    }
  }
  //create a list of icon for store an icon
  //if i want to specific a type of list i just do: List<DataType> name=[];
  //List of widget = array of widget that dynamic
  //want to get an element from list=> score[index], index start from 0
  //want to insert an element to any index of list => score[index,value]
  List<Widget> score = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text(
          'Quiz time !',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 5.0,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   //make width responsive or make width bigger as much as it can
              //   width: MediaQuery.of(context).size.width,
              //   height: 600,
              SizedBox(
                height: 300,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  //get a textQuestion for that index in a questionDisplay
                  questionAbtraction.getQuestions(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // ),
              botton(name: 'True', color: Colors.blueAccent),
              SizedBox(
                height: 5,
              ),
              botton(name: 'False', color: Colors.redAccent),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Row(
                    //i replace a widget[]=>
                    //score because score also return list and children required list too
                    children: score),
              )
            ],
          ),
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
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          //rebuild for changing part
          setState(() {
            //check condition of user input name
            if (name == "True") {
              if (questionAbtraction.getAnswers() == true) {
                //add new Icon to a list score.
                score.add(Icon(Icons.check, color: Colors.green));
              } else if (questionAbtraction.getAnswers() == false) {
                score.add(Icon(Icons.close, color: Colors.red));
              }
            } else if (name == "False") {
              //verified answer of user
              //get value checkAnswer from the list questionDisplay
              //use a object of questionAbtraction to access a answer in questionDisplay list in 
              //class QuestionAbtraction
              if (questionAbtraction.getAnswers() == true) {
                //add new Icon to a list score.
                score.add(Icon(Icons.close, color: Colors.red));
              } else if (questionAbtraction.getAnswers()== false) {
                score.add(Icon(Icons.check, color: Colors.green));
              }
            }
            questionAbtraction.updateIndex();
            isFinish();
          });
        },
      ),
    );
  }
}
