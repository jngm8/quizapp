import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';

class Quiz extends StatelessWidget{

  const Quiz({super.key});


  @override
  Widget build(context){
    return const MaterialApp(
      home: Scaffold(
        body: Home()
      ),
    );
  }
}