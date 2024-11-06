import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 200,
        //   ),             not optimal aproach!
        // ),

        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(150, 205, 241, 226),
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
        OutlinedButton.icon(
          onPressed: () {},
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
