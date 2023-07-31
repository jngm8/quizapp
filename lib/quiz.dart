import 'package:flutter/material.dart';
import 'package:quizapp/home/home.dart';
import 'package:quizapp/questions_screen.dart';



class Quiz extends StatefulWidget{

  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}



class _QuizState extends State<Quiz>{

  var changeScreen = "home-screen";

  void switchScreen(){
    setState(() { // Makes the build method run again, and compare the old tree with the new features this setState provide to construct the new tree
      changeScreen = "question-screen";
    });
  }

  @override
  Widget build(context){

    Widget? widgetScreen = Home(switchScreen); // It is type widget because when setState is called in whatever function to change the
                                                    // screen, its type is Home() and if its type var, dart sets dinamically the type, 
                                                    // in this case type home

    if(changeScreen == "question-screen"){
      widgetScreen = const QuestionsScreen();
    } 
    return  MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 99, 10, 168),
                Color.fromARGB(255, 141, 19, 234)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: widgetScreen // Todas las paginas van a tener esta configuracion de color en el background. Además, con render content
                                // conditionally, esta variable va cambiar de screen dependiendo de lo que las funciones indiquen a un widget
        ),                      // especifico
      ),
    );
  }
}