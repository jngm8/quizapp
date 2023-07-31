import 'package:flutter/material.dart';



class StyledAnswerButtons extends StatelessWidget{

  const StyledAnswerButtons(this.answer,this.changeQuestion,{super.key});

  final String answer;

  final void Function() changeQuestion;

  @override
  Widget build(context){
    return ElevatedButton(onPressed: changeQuestion, style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 164, 28, 182),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      
    ),
      child: Text(answer, textAlign: TextAlign.center,));

  }
}