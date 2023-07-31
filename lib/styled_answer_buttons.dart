import 'package:flutter/material.dart';



class StyledAnswerButtons extends StatelessWidget{

  const StyledAnswerButtons(this.answer,this.changeQuestion,{super.key});

  final String answer;

  final void Function() changeQuestion;

  @override
  Widget build(context){
    return ElevatedButton(onPressed: changeQuestion, child: Text(answer));

  }
}