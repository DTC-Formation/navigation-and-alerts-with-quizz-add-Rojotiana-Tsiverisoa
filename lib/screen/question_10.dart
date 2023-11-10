import 'package:flutter/material.dart';

import 'package:quiz_game/colors/my_colors.dart';
import 'package:quiz_game/screen/game_result.dart';

class Question10 extends StatefulWidget {
  final int lastScore;

  const Question10({super.key, required this.lastScore});

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  int score = 0;

  void setScore(BuildContext context, int newValue) {
    setState(() {
      score = newValue + widget.lastScore;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text((newValue != 0)
              ? 'Félicitation, c\'est la bonne réponse!'
              : 'Désolé, ce n\'est pas la bonne réponse'),
          duration: const Duration(seconds: 3),
        ),
      );

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameResult(
              finalScore: score,
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: MyColors.blueGradient,
            ),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: 180,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(17, 116, 208, 1),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(15, 88, 156, 1),
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Qui est le leader politique malgache qui est devenu président en 1975 et a instauré un régime socialiste ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Andry Rajoelina'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Didier Ratsiraka'),
                          onPressed: () {
                            setScore(context, 1);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Marc Ravalomanana'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Hery Rajaonarimampianina'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
