import 'package:flutter/material.dart';






class NumberIcons extends StatelessWidget{


const NumberIcons(this.data,this.text,{super.key});

final List<bool> data;

final String text;


@override
Widget build(context){
  
  
    return Text(text, style: TextStyle(
      color: data[0]
        ? Colors.green
        : Colors.red
    ));
  }
}