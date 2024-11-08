import 'package:flutter/material.dart';

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
        const Text('Questions Screen'),
        OutlinedButton.icon(
          onPressed: () {},
          label: const Text('back'),
        ),
      ],
    );
  }
}
