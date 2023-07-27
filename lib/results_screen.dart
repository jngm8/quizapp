import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';




class ResultScreen extends StatelessWidget{

  ResultScreen(this.chosenOptions,{super.key});

  final List<String> chosenOptions;

  final List<Map<String,Object>> summary = [];

  List<Map<String,Object>> summaryFunction(){
    for(var i = 0;i < chosenOptions.length; i++){
      summary.add(
        {
          "questionIndex": i,
          "question" : questions[i].question,
          "correctAnswer": questions[i].answers[0],
          "chosenAnswer": chosenOptions[i],
        }
      );
    }

    return summary;
  }

  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
      margin: const EdgeInsets.all(50),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        const Text("You answered X correct out of Y options",textAlign: TextAlign.center,),
        const SizedBox(height: 50,),
        const Text("ooptions",textAlign: TextAlign.center,),
        const SizedBox(height: 50,),
        OutlinedButton.icon(onPressed: (){}, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text("Restart Quiz",
            style:GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            icon: const Icon(Icons.restart_alt_sharp))
      ]
      ,),
      ),

    );
  }
}