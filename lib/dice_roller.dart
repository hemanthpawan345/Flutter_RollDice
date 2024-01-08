import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
//  var activeImage='assets/images/dice-1.png';
  var diceRoll=2;
  void rolldice(){
    setState(() {
      diceRoll = randomizer.nextInt(6)+1;   
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceRoll.png',
              width: 200,
            ),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
                padding: const EdgeInsets.only(top:20),
              ),
              child: const Text(
                  'Roll Dice',
                ),
            )
          ],
        );
  }
}