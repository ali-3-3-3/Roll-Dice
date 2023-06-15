import 'package:flutter/material.dart';

class StyledTextContainer extends StatelessWidget {
  const StyledTextContainer(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 28, 31, 65),
        fontSize: 50,
      ),
    );
  }
}
