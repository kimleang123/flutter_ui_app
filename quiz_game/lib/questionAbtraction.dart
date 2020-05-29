import 'question.dart';

class QuestionAbtraction{
  //create a variable for index of questions list
  int index = 0;
  //create a list of question
  // List<String> questions = [];
  //create a list type questions
  List<Question> questionDisplay = [
    Question(s:'int x[] = new int[]{10,20,30};\nArrays can also be created and initialize as in above statement.', b: true),
    Question(s:'In an instance method or a constructor, "this" is a reference to the current object.', b: true),
    Question(s:'Garbage Collection is manual process.', b: false),
    Question(s:'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',b:true),
    Question(s:'Constructor overloading is not possible in Java.',b: false ),
    Question(s:'Assignment operator is evaluated Left to Right.',b:false),
    Question(s:'All binary operators except for the assignment operators are evaluated from Left to Right',b: true),
    Question(s:'Variable name can begin with a letter, "\$", or "_".',b: true),
    Question(s:'Interfaces can be instantiated.',b: false),
    Question(s:'The modifiers public and static cannot written in either order "public static" or "static public".',b: false),
    Question(s:'James Gosling is father of Java?',b: true)
  ];
  void updateIndex(){
    if(index<questionDisplay.length-1){
      index++;
    }
  }
  int setIndexTozero(){
    return index=0;
  }
  //use ecapulation method for get question from this class
  //protect from direct access that can make a change in questionDisplay list 
  String getQuestions(){
    return questionDisplay[index].textQuestion;
  }
  bool getAnswers(){
    return questionDisplay[index].checkAnswer;
  }
}