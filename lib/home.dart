import 'package:flutter/material.dart';
import 'package:quizapp/home_elements.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/data/questions.dart';


class Home extends StatefulWidget {

  const Home( {super.key});

  @override
  State<Home> createState(){
    return _HomeState();
  }

}

class _HomeState extends State<Home>{

  var activeScreen = 'start-screen';
  final List<String> selectedAnswers = [];

  // @override
  // void initState(){
  //   super.initState();
  //   activeScreen = HomeElement(switchScreen);
  // }

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void addAnswers(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start-scjihhreen';
      });
    }
  }
  
  @override
  Widget build(context) {

    Widget screenWidget = HomeElement(switchScreen);

    if(activeScreen=='question-screen'){
      screenWidget = QuestionsScreen(onSelectedAnswers: addAnswers);
    }


    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 97, 48, 139),Color.fromARGB(255, 146, 73, 209)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: screenWidget
    );
  }
}


