import 'package:flutter/material.dart';

import 'package:quiz_game/screen/homepage.dart';
import 'package:quiz_game/screen/question_01.dart';
import 'package:quiz_game/screen/question_02.dart';
import 'package:quiz_game/screen/question_03.dart';
import 'package:quiz_game/screen/question_04.dart';
import 'package:quiz_game/screen/question_05.dart';
import 'package:quiz_game/screen/question_06.dart';
import 'package:quiz_game/screen/question_07.dart';
import 'package:quiz_game/screen/question_08.dart';
import 'package:quiz_game/screen/question_09.dart';
import 'package:quiz_game/screen/question_10.dart';
import 'package:quiz_game/screen/game_result.dart';

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
        '/q01': (context) => const Question01(),
        '/q02': (context) => const Question02(lastScore: 0),
        '/q03': (context) => const Question03(lastScore: 0),
        '/q04': (context) => const Question04(lastScore: 0),
        '/q05': (context) => const Question05(lastScore: 0),
        '/q06': (context) => const Question06(lastScore: 0),
        '/q07': (context) => const Question07(lastScore: 0),
        '/q08': (context) => const Question08(lastScore: 0),
        '/q09': (context) => const Question09(lastScore: 0),
        '/q10': (context) => const Question10(lastScore: 0),
        '/res': (context) => const GameResult(finalScore: 0),
      },
    );
  }
}
