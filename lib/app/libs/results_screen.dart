import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/app/libs/data/questions.dart';
import 'package:quiz_app/app/libs/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onStartScreen;
  final List<String> chooseAnswers;
  const ResultsScreen({
    super.key,
    required this.onStartScreen,
    required this.chooseAnswers,
  });

  List<Map<String, Object>> getSumaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].title,
        'correct_anwesors': questions[i].question[0],
        'user_answer': chooseAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final sumaryData = getSumaryData();
    var resultMensager = '🤔 Precisa treinar mais seu raciocínio!';
    final numTotalQuestion = questions.length;
    final numCorrectQuestion =
        sumaryData.where((data) {
          return data['user_answer'] == data['correct_anwesors'];
        }).length;

    if (numCorrectQuestion <= 3) {
      resultMensager = '🤔 Precisa treinar mais seu raciocínio!';
    } else if (numCorrectQuestion <= 7) {
      resultMensager = '🧐 Você é esperto(a), mas pode melhorar!';
    } else if (numCorrectQuestion <= 10) {
      resultMensager = '🤓 Inteligência acima da média!';
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Você acertou $numCorrectQuestion das $numTotalQuestion questões do quiz!',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,

                color: Colors.white,
              ),
            ),
            Text(
              resultMensager,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,

                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            QuestionsSummary(sumaryData),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: onStartScreen,
              icon: Icon(Icons.restart_alt, size: 28, color: Colors.white),
              label: Text(
                'Reiniciar Quiz',
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
