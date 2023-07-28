import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(context) {
    return Center( // Puts whatever we put in, in the center of the page
      child: Column(
        mainAxisSize: MainAxisSize.min, // The Column will take the minimun amount of space, instead of taking all the height space
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 200, color: const Color.fromARGB(128, 255, 255, 255)),
          const SizedBox(height: 60,), // Add some spacing between widgets
          const Text("Learn Flutter the fun way!",style: TextStyle(
              color: Colors.white,
              fontSize: 28
            ),
          ),
          const SizedBox(height: 100,),
          OutlinedButton.icon(
              onPressed: (){},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon:const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz",style: TextStyle(fontSize:20)),
          ),
        ],
      ),
    );
  }

}
