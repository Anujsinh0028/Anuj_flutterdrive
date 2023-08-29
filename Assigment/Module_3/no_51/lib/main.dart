import 'package:flutter/material.dart';
import 'package:no_51/inputnumbersscreen.dart';


void main() {
  runApp(NumberRangeApp());
}

class NumberRangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputNumbersScreen(),
    );
  }
}

