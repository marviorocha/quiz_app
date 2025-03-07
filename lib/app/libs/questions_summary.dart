import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 20,
                      child: Center(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),

                          style: GoogleFonts.poppins(
                            color: const Color(0xFF191616),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "P: ${data['question'] as String}",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),

                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.reply, color: Colors.blue),
                              Text(
                                " ${data['user_answer'] as String}",
                                style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(
                                    255,
                                    76,
                                    121,
                                    218,
                                  ),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_box, color: Colors.lightGreen),
                              Text(
                                data['correct_anwesors'] as String,
                                style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 4, 246, 17),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
