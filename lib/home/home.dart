import 'package:flutter/material.dart';


class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(context){
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 99, 10, 168),
          Color.fromARGB(255, 141, 19, 234)
        ])
      ),
    );
  }


}