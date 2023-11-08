import 'package:flutter/material.dart';

class MyColors {
  static const Color blue = Color.fromRGBO(3, 47, 124, 1);
  static const LinearGradient blueGradient = LinearGradient(
    colors: [
      Color.fromRGBO(3, 47, 124, 1),
      Color.fromRGBO(17, 116, 208, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
