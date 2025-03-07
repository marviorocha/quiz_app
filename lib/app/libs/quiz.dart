import 'package:flutter/material.dart';
import 'package:quiz_app/app/libs/data/questions.dart';
import 'package:quiz_app/app/libs/questions_screeen.dart';
import 'package:quiz_app/app/libs/results_screen.dart';
import 'package:quiz_app/app/libs/start_screen.dart';

class Quiz extends StatefulWidget {
  final String title;
  const Quiz({super.key, required this.title});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnwers = [];

  var activeScreen = 'start-screen';

  void chooseAweser(aweser) {
    selectedAnwers.add(aweser);
    if (selectedAnwers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void resetQuiz() {
    setState(() {
      selectedAnwers = [];
      activeScreen = "question-screen";
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAweser);
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chooseAnswers: selectedAnwers,
        onStartScreen: resetQuiz,
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF8F228F), Color(0xFF3B0267)],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
