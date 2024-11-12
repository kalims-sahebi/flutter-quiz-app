import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You answered x questions out of Y correctly'),
            SizedBox(
              height: 30,
            ),
            Text('Quiz Result'),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Restart quiz'),
            )
          ],
        ),
      ),
    );
  }
}
