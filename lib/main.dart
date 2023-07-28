import 'package:flutter/material.dart';
import 'package:quizapp/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 99, 10, 168),
                Color.fromARGB(255, 141, 19, 234)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: const Home() // Todas las paginas van a tener esta configuracion de color en el background
        ),
      ),
    ),
  );
}
