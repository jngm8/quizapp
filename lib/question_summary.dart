import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryList, {super.key});

  final List<Map<String, Object>> summaryList;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryList.map((item) {
            return Row(
              children: [
                const Icon(((Icons.arrow_back_ios))),
                Expanded(
                  // Takes the available space for the parent widget that is row
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(item["question"] as String,
                          style: GoogleFonts.oswald(
                              color: Colors.white, fontSize: 18)),
                      Text(item["chosen_answer"] as String,
                      style: GoogleFonts.oswald(
                        color: const Color.fromARGB(81, 255, 255, 255),
                        fontSize: 14
                      )),
                      Text(item["correct_answer"] as String,
                          style: GoogleFonts.oswald(
                              color: const Color.fromARGB(255, 61, 255, 7),
                              fontSize: 14)),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
