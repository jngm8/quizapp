import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions/styled_answer_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen(this.chosenAnswers,{super.key});
  
  final void Function(String answers) chosenAnswers;

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }

}



class _QuestionsScreenState extends State<QuestionsScreen>{

  int currentIndex = 0; 

  void addIndex(answers){
    widget.chosenAnswers(answers); // We use widget because its a function from the parent class
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(context){

  
    final currentQuestion = questions[currentIndex];

      return  SizedBox(
        width: double.infinity, // Use as much space(width) as you can
        child: Container(
          margin: const EdgeInsets.all(20), // add a margin to the column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers all inside column to the center of the page. Vertical Axis
            crossAxisAlignment: CrossAxisAlignment.stretch, // Fill as much space as possible in the horizontal axis
            children: [
            Text(currentQuestion.text, style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 232, 164, 239),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.shuffleAnswers().map((item) =>StyledAnswerButtons(item, (){
              addIndex(item);
            })) // the spread operator "..." is like the flat in js
          ],),
        )
      );
  }
}