class QuizQuestion {

  const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers;


  List<String> shuffleAnswers() {

    final List<String> shuffledList = List.of(answers); // Saves in a a variable a copy of the original list

    shuffledList.shuffle(); // It shuffles the copy(shuffledList) of the answers. final works because we are not reassigning the variabel, instead
                            // only changing the varibale already stored in memory

    return shuffledList;


  }
}