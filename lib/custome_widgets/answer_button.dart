import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
      ),
      onPressed: onTap,
      child: Text(
        answertxt,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
