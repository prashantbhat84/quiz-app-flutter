import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final num_total = questions.length;
    final num_correct = summaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You have answered $num_correct out of $num_total',
            ),
            const SizedBox(
              height: 40,
            ),
            QuestionsSummary(
              summaryData,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
