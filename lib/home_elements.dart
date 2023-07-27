import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
            Text(
              "Learn Flutter the Fun Way!",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:70), //Space between image and the text
            OutlinedButton.icon(onPressed: homePage, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text("Start Quiz",
            style:GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            icon: const Icon(Icons.arrow_right_sharp))
          ],
        ),
      );
  }
}