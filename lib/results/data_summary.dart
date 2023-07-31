import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataSummary extends StatelessWidget {
  const DataSummary(this.data, {super.key});

  final List<Map<String, Object>> data;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: // Looping through out the summary list in order to display it in the results screen
              data.map(
            (individualquest) {
              return Row(
                children: [
                  Text(((individualquest["question_index"] as int) + 1)
                      .toString()),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    // Allows its child(column) to grow as its parent(row) leds him. Row takes the max width the screen has
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const SizedBox(height: 30),

                        Text(
                          individualquest["question"] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),

                        Text(
                          individualquest["user_answer"] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(135, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),

                        Text(
                          individualquest["correct_answer"] as String,
                          style: GoogleFonts.lato(
                            color: const  Color.fromARGB(217, 0, 255, 55),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
