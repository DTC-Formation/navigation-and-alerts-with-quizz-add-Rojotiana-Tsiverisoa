import 'package:flutter/material.dart';

import 'package:quiz_game/colors/my_colors.dart';
import 'package:quiz_game/screen/question_05.dart';

class Question04 extends StatefulWidget {
  final int lastScore;

  const Question04({super.key, required this.lastScore});

  @override
  State<Question04> createState() => _Question04State();
}

class _Question04State extends State<Question04> {
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
            builder: (context) => Question05(
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
                      'Quel événement historique a conduit à l\'indépendance de Madagascar en 1960 ?',
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
                          child: const Text('La Révolution française'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La Guerre civile'),
                          onPressed: () {
                            setScore(context, 0);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La Décolonisation'),
                          onPressed: () {
                            setScore(context, 1);
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('La Conférence de Bandung'),
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
