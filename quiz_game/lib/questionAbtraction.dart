import 'question.dart';

class QuestionAbtraction{
  //create a variable for index of questions list
  int index = 0;
  //create a list of question
  // List<String> questions = [];
  //create a list type questions
  List<Question> questionDisplay = [
    Question(textQuestion:'int x[] = new int[]{10,20,30};\nArrays can also be created and initialize as in above statement.', checkAnswer: true),
    Question(textQuestion:'In an instance method or a constructor, "this" is a reference to the current object.', checkAnswer: true),
    Question(textQuestion:'Garbage Collection is manual process.', checkAnswer: false),
    Question(textQuestion:'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',checkAnswer:true),
    Question(textQuestion:'Constructor overloading is not possible in Java.',checkAnswer: false ),
    Question(textQuestion:'Assignment operator is evaluated Left to Right.',checkAnswer:false),
    Question(textQuestion:'All binary operators except for the assignment operators are evaluated from Left to Right',checkAnswer: true),
    Question(textQuestion:'Variable name can begin with a letter, "\$", or "_".',checkAnswer: true),
    Question(textQuestion:'Interfaces can be instantiated.',checkAnswer: false),
    Question(textQuestion:'The modifiers public and static cannot written in either order "public static" or "static public".',checkAnswer: false),
    Question(textQuestion:'James Gosling is father of Java?',checkAnswer: true)
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