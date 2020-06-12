import 'question_tree.dart';

class ChoiceBranch {
  int index = 0;
  List<QuestionTree> choiceBranch = [
    //1
    QuestionTree(
        t: "Hello sasa, How are you?",
        c1: "Ahhh, fine susy.",
        c2: "Emm, not good."),
    // choose c1
    QuestionTree(
        t: "sasa, you free today?",
        c1: "emmm, no i'm busy.sorry",
        c2: "yes,what's up?"),
    // choose c2
    QuestionTree(
        t: "Sasa, what's going on?",
        c1: "nothing just a bad day coming.",
        c2: "i break up..."),
    //choose c1 1
    QuestionTree(
        t: "it's ok sasa, next time",
        c1: "yep, next time",
        c2: " "),
    //choose c2 1
    QuestionTree(
        t: "Did you do homework already cuz i met some problems?",
        c1: "ok",
        c2: " "),
  ];
  String getText() {
    return choiceBranch[index].t;
  }

  String getChoice1() {
    return choiceBranch[index].c1;
  }

  String getChoice2() {
    return choiceBranch[index].c2;
  }

  // void nextIndex(){
  //   if(index<choiceBranch.length-1){
  //     index++;
  //   }
  // }
  // void nextQuestionBranch1() {
  //   if (index == 2 && index == 4) {
  //     index=index+2;
  //   } else {
  //     if (index < choiceBranch.length - 1) {
  //       index++;
  //     }
  //   }
  // }

  void nextQuestionBranch(int choice) {
    if(choice==1&&index==0){
      index=1;
    }else if(choice==2&&index==0){
      index=2;
    }else if(choice==1&&index==1){
      index=3;
    }else if(choice==2&&index==1){
      index=4;
    }else if(index==2||index==3||index==4){
      setIndex();
    }
  }
  int setIndex(){
    return index=0;
  }
  bool buttonShouldBeVisible() {
    if (index == 0 ||index == 1) {
      return true;
    } else {
      return false;
    }
  }
}
