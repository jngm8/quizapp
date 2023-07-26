
class QuizQuestion{

  const QuizQuestion(this.question,this.answers);

  final String question;
  final List<String> answers;


  List<String> getSuffledAnswers(){
    
    final copyList = List.of(answers); //List.of generates a copy of the original answer lis in order to not modify it.
    copyList.shuffle(); // It generates a random order for every item on the copyList
    return copyList;
  }
}