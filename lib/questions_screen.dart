import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custome_widgets/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onAnswerSelect});
  final void Function(String answer) onAnswerSelect;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String asnwer) {
    widget.onAnswerSelect(asnwer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: GoogleFonts.redHatDisplay(
                color: const Color.fromARGB(255, 6, 82, 20),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswerList().map((answers) {
            return AnswerButton(
              answertxt: answers,
              onTap: () {
                answerQuestion(answers);
              },
            );
          }),
        ],
      ),
    );
  }
}
