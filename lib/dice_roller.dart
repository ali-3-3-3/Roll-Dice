import 'package:flutter/material.dart';

import 'dart:math';

import 'package:roll_dice/styled_text_container.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-1.png';

  void rollDice() {
    var diceRoll = 1;

    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)
              // Can also be written as const SizedBox(height: 20) in children
              // SizedBox might be better in that the button does not grow in size
              ),
          child: const StyledTextContainer('Roll Dice'),
        ),
      ],
    );
  }
}
