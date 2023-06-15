import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

const color1 = Color.fromARGB(255, 251, 159, 159);
var color2 = const Color.fromARGB(255, 138, 243, 255);
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([color1, color2]),
      ),
    ),
  );
}
