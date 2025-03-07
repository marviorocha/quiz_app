import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/app/helpers/answer_button.dart';

import 'package:quiz_app/app/libs/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionAweser = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 400,
            child: Text(
              questionAweser.title,
              textAlign: TextAlign.center,

              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,

                shadows: [
                  Shadow(
                    blurRadius: 3,
                    color: Colors.black,
                    offset: Offset(7.0, 5.0),
                  ),
                ],
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50),
          ...questionAweser.getSuffleList.map((anwers) {
            return AnswerButton(
              answerText: anwers,
              onTap: () {
                answerQuestion(anwers);
              },
            );
          }),
        ],
      ),
    );
  }
}
