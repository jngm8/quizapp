import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
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
            OutlinedButton.icon(onPressed: () {}, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label:const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
