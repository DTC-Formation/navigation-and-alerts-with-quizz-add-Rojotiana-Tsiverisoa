import 'package:flutter/material.dart';

import 'package:quiz_game/colors/my_colors.dart';
import 'package:quiz_game/screen/question_10.dart';

class Question09 extends StatefulWidget {
  final int lastScore;

  const Question09({super.key, required this.lastScore});

  @override
  State<Question09> createState() => _Question09State();
}

class _Question09State extends State<Question09> {
  int score = 0;

  void setScore(BuildContext context, int newValue) {
    setState(() {
      score = newValue + widget.lastScore;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question10(
              lastScore: score,
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
                      'Quel est le nom de la révolte qui a éclaté en 1947 à Madagascar contre le régime colonial français ?',
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
                          child: const Text('La Révolte des Canuts'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text(
                              'La Révolte de la Compagnie des Indes'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La Révolte de Menalamba'),
                          onPressed: () {
                            setScore(context, 1);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La Révolte des Taiping'),
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
