import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberIcons extends StatelessWidget{

const NumberIcons(this.dataAnswer,this.text,{super.key});

final bool dataAnswer; // Using the dataSummary and a function that return a bool

final String text;


@override
Widget build(context){
  
  
    return Container(
      width: 40, 
      height: 40,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
         color: dataAnswer
          ? const Color.fromARGB(255, 75, 217, 177)
          : const Color.fromARGB(255, 252, 135, 127)
      ),
      child: Text(text, style: GoogleFonts.lato(
                color: const Color.fromARGB(134, 0, 0, 0),
                fontSize: 25,
              ),
      textAlign: TextAlign.center,),
    );
  }
}