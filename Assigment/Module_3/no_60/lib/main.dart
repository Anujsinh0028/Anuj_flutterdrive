// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:no_60/menu.dart';


void main(){
  runApp(const foodapp());
}

class foodapp extends StatefulWidget {
  const foodapp({super.key});

  @override
  State<foodapp> createState() => _foodappState();
}

class _foodappState extends State<foodapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),
    );
  }
}