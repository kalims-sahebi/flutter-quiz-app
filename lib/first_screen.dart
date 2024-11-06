import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(context) {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const OutlinedButton(
            onPressed: null,
            child: Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
