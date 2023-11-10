import 'package:flutter/material.dart';

import 'package:quiz_game/colors/my_colors.dart';
import 'package:quiz_game/screen/question_09.dart';

class Question08 extends StatefulWidget {
  final int lastScore;

  const Question08({super.key, required this.lastScore});

  @override
  State<Question08> createState() => _Question08State();
}

class _Question08State extends State<Question08> {
  int score = 0;

  void setScore(BuildContext context, int newValue) {
    setState(() {
      score = newValue + widget.lastScore;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question09(
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
                      'Quelle était la principale ressource économique de Madagascar pendant la période coloniale française ?',
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
                          child: const Text('Le pétrole'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Le sucre'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('L\'or'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La vanille'),
                          onPressed: () {
                            setScore(context, 1);
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
