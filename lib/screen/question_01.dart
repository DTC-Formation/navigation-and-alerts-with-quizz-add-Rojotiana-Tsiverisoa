import 'package:flutter/material.dart';

import 'package:quiz_game/colors/my_colors.dart';

class Question01 extends StatelessWidget {
  const Question01({super.key});

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
                      'Quel était le premier explorateur européen à mettre le pied à Madagascar ?',
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
                          child: const Text('Christophe Colomb'),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Marco Polo'),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Vasco de Gama'),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          child: const Text('Jacques Cartier'),
                          onPressed: () {},
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
