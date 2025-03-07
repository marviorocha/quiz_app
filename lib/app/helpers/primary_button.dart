import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(258, 50),
  elevation: 1,
  foregroundColor: Colors.indigo,
  backgroundColor: Color(0xFF6600ee),
  textStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);

final ButtonStyle buttonSecundary = ElevatedButton.styleFrom(
  minimumSize: const Size(300, 50),
  elevation: 1,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  foregroundColor: Colors.blueAccent,
  backgroundColor: Color.fromARGB(255, 1, 72, 153),
  textStyle: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);
