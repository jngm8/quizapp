import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/results/data_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.switchScreen, this.listAnswered, {super.key});

  final void Function() switchScreen;

  final List<String> listAnswered;

  List<Map<String, Object>> summaryList() {
    // List of maps where the key is a string a the value is type object because we dont know
    // the value type, so dart assigns it according to its type (Later we have to coerce because of this same reason)
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < listAnswered.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": listAnswered[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = summaryList();

    final totalNumberQuestions = questions.length;

    final totalNumberCorrectQuestions = summaryData.where((individualquest) {
      return individualquest["user_answer"] ==
          individualquest["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $totalNumberCorrectQuestions out of $totalNumberQuestions questions correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(135, 255, 255, 255),
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 30,
            ),

            // Calling the DataSummary class in roder to display the final results

            DataSummary(summaryData),

            const SizedBox(
              height: 30,
            ),

            OutlinedButton.icon(
              onPressed: switchScreen,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.restart_alt),
              label: Text(
                "Restart Quiz",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
