import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/home/home.dart';
import 'package:quizapp/questions/questions_screen.dart';
import 'package:quizapp/results/results_screen.dart';



class Quiz extends StatefulWidget{

  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}



class _QuizState extends State<Quiz>{
  
  List<String> selectedAnswers = [];

  var changeScreen = "home-screen";

  void switchScreen(){
    setState(() { // Makes the build method run again, and compare the old tree with the new features this setState provide to construct the new tree
      changeScreen = "question-screen";
    });
  }

  void chosenAnswers(String answers){
    selectedAnswers.add(answers); // Adds the selected answers by the user in the list. In questions screen class is where the chosenAnswer
                                  // function is passed in order to pass the function to the button whenever it is pressed and the chosen answer
    if(selectedAnswers.length == questions.length){
      setState(() {
        changeScreen = 'results-screen';
      });
    }
  }

  
  void switchScreenRestart(){
    setState(() { // Makes the build method run again, and compare the old tree with the new features this setState provide to construct the new tree
      changeScreen = "return-screen";
      selectedAnswers = [];
    });
  }

  @override
  Widget build(context){

    /*The build method is executed once, but since its a class that extends StatefulWidget it means it has the setState method.
    Now, setState is run always inside a function, it means that when a function is called in whatever place, it means this setState 
    is runned, and the tree is goign to change whatever is inside this setState and the the build method is executed again*/ 

    Widget? widgetScreen = Home(switchScreen); // It is type widget because when setState is called in whatever function to change the
                                              // screen, its type is Home() and if its type var, dart sets dinamically the type, 
                                              // in this case type home

    if(changeScreen == "question-screen"){
      widgetScreen = QuestionsScreen(chosenAnswers);
    } 

    if(changeScreen == "results-screen"){
      widgetScreen = ResultsScreen(switchScreenRestart);
    } 

    if(changeScreen == "return-screen"){
      widgetScreen = Home(switchScreen);
    } 


    return  MaterialApp(
      home: Scaffold(
        body: Container(
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