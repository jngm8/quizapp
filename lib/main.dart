import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';

void main(){
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 97, 48, 139),
          Color.fromARGB(255, 146, 73, 209))
      ),
    ),
  );
}