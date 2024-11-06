import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/first_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 230, 226, 2),
                Color.fromARGB(255, 5, 182, 49),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const FirstScreen(),
        ),
      ),
    ),
  );
}
