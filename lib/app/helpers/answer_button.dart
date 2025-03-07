import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/app/helpers/primary_button.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: onTap,

        style: buttonSecundary,
        child: Text(
          answerText,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
