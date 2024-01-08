import 'package:flutter/material.dart';
import 'package:myapp_1/gradinent_container.dart';
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        listColors:[
          Colors.cyan,
          Colors.green,
          Colors.black
        ]
      ),
    ),
  ));
}
