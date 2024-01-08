import 'package:flutter/material.dart';

class TextObj extends StatelessWidget{
  const TextObj(this.text , {super.key});
  final String text;
  @override
  Widget build(context){
    return Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
        );
  }

}