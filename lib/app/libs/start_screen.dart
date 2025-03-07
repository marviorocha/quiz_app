import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/app/helpers/primary_button.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 300),
        SizedBox(width: 200),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Lean Flutter the Fun Way!',
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 500),

        ElevatedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: buttonPrimary,
          icon: Icon(Icons.play_arrow_outlined, size: 25, color: Colors.white),
          label: Text(
            'Start Quiz',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
