import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answertxt, required this.onTap});
  final String answertxt;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 1, 142, 45),
        foregroundColor: const Color.fromARGB(255, 173, 213, 183),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      onPressed: onTap,
      child: Text(
        style: GoogleFonts.lato(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        answertxt,
        textAlign: TextAlign.center,
      ),
    );
  }
}
