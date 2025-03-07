import 'package:flutter/material.dart';
import 'package:quiz_app/app/libs/quiz.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Quiz(title: 'Quiz App'),
    );
  }
}
