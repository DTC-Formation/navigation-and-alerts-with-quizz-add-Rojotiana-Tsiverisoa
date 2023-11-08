import 'package:flutter/material.dart';

import 'package:quiz_game/screen/homepage.dart';
import 'package:quiz_game/screen/question_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/q1': (context) => const Question01(),
      },
    );
  }
}
