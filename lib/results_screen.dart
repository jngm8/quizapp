import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_summary.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen(this.chosenOptions, this.restart,{super.key});

  final void Function() restart;

  final List<String> chosenOptions;

  final List<Map<String, Object>> summary = [];

  List<Map<String, Object>> summaryFunction() {
    for (var i = 0; i < chosenOptions.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "chosen_answer": chosenOptions[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryFunc = summaryFunction();
    final totalQuestions = questions.length;
    final correctQuestions = summaryFunc.where((item) {
      return item["correct_answer"] == item["chosen_answer"];
    }).length;

    final correctQuestionsBool = summaryFunc.where((item) {
      return item["correct_answer"] == item["chosen_answer"];
    });

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered $correctQuestions out of $totalQuestions questions correctly!",
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            QuestionSummary(summaryFunc),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                onPressed: restart,
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                label: Text(
                  "Restart Quiz",
                  style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.restart_alt_sharp))
          ],
        ),
      ),
    );
  }
}
