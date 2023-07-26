import 'package:flutter/material.dart';


class HomeElement extends StatelessWidget{

  const HomeElement(this.homePage,{super.key});

  final void Function() homePage;

  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255)),
            const SizedBox(height:70), //Space between image and the text
            const Text(
              "Learn Flutter the Fun Way!",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(height:70), //Space between image and the text
            OutlinedButton.icon(onPressed: homePage, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label:const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_sharp))
          ],
        ),
      );
  }
}