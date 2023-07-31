import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/styled_answer_buttons.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}


class _QuestionsScreenState extends State<QuestionsScreen>{

  @override
  Widget build(context){
      return  SizedBox(
        width: double.infinity, // Use as much space(width) as you can
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers all inside column to the center of the page
          children: [
          const Text("Question?"),
          const SizedBox(height: 30,),
          StyledAnswerButtons("Answer 1",(){}),
          StyledAnswerButtons("Answer 2",(){}),
          StyledAnswerButtons("Answer 3",(){}),
          StyledAnswerButtons("Answer 4",(){}),
        ],)
      );
  }
}