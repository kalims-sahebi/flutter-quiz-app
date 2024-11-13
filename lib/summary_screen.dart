import 'package:flutter/material.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['questionText'].toString()),
                        SizedBox(
                          height: 5,
                        ),
                        Text(data['userChoosenAnswer'].toString()),
                        Text(data['correctAnswer'].toString()),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
