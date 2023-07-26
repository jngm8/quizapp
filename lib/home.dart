import 'package:flutter/material.dart';
import 'package:quizapp/home_elements.dart';
import 'package:quizapp/questions_screen.dart';


class Home extends StatefulWidget {

  const Home( {super.key});

  @override
  State<Home> createState(){
    return _HomeState();
  }

}

class _HomeState extends State<Home>{

  var activeScreen = 'start-screen';

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
  
  @override
  Widget build(context) {

    Widget screenWidget = HomeElement(switchScreen);

    if(activeScreen=='question-screen'){
      screenWidget = const QuestionsScreen();
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


