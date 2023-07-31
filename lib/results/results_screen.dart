import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("You answered X out of Y questions correctly"),

            const SizedBox(height: 30,),

            const Text("Answers"),

            const SizedBox( height: 30,),

            OutlinedButton.icon(
              onPressed: switchScreen,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.restart_alt),
              label: const Text("Restart Quiz", style: TextStyle(fontSize: 20)),
              ),
          ],
        ),
      ),
    );
  }
}
