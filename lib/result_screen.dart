import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/summary_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.choosenAnswers,
    required this.onRestart,
  });
  final List<String> choosenAnswers;
  final void Function() onRestart;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summaryList = [];
    for (int i = 0; i < choosenAnswers.length; i++) {
      summaryList.add({
        'question_index': i,
        'questionText': questions[i].question,
        'correctAnswer': questions[i].answers[0],
        'userChoosenAnswer': choosenAnswers[i],
      });
    }
    return summaryList;
  }

  @override
  Widget build(context) {
    final totalQuestion = questions.length;
    var summaryData = getSummary();
    final correctAnswers = summaryData.where((data) {
      return data['correctAnswer'] == data['userChoosenAnswer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers questions out of $totalQuestion correctly',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 25, 1, 44),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            QuizSummary(summaryData),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 184, 223, 78),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
