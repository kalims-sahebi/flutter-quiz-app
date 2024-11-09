import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custome_widgets/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  // const QuestionsScreen(this.back, {super.key});
  // final void Function() back;
  // const QuestionsScreen({required this.back,super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswerList().map((answers) {
            return AnswerButton(
              answertxt: answers,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
