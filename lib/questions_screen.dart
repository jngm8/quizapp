import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

    var actualQuestionNumber = 0;

    void changeQuestion(){
      setState(() {
        actualQuestionNumber++;
      });
    }
  @override
  Widget build(context) {

    final objectQuestAns = questions[actualQuestionNumber];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              objectQuestAns.question,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Extracting data from the array questions and then put into the AnswerButton class
            ...objectQuestAns.getSuffledAnswers().map((items) {
              return AnswerButton(items, changeQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
