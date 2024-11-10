import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
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
        Text(
          'Learn flutter the fun way!',
          style: GoogleFonts.lato(
              fontSize: 15, color: const Color.fromARGB(255, 153, 246, 117)),
        ),

        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
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
