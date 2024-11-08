import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custome_widgets/answer_button.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Question ...'),
        AnswerButton(
          answertxt: 'answer ...1',
          onTap: () {},
        ),
        AnswerButton(
          answertxt: 'answer ...2',
          onTap: () {},
        ),
        AnswerButton(
          answertxt: 'answer ...3',
          onTap: () {},
        ),
      ],
    );
  }
}
