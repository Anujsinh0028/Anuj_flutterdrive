import 'package:flutter/material.dart';
import 'package:no_60/first.dart';
import 'package:no_60/menu.dart';
// import 'package:no_60/home.dart';
import 'package:no_60/order.dart';
import 'package:no_60/test.dart';

void main(){
  runApp(foodapp());
}

class foodapp extends StatefulWidget {
  const foodapp({super.key});

  @override
  State<foodapp> createState() => _foodappState();
}

class _foodappState extends State<foodapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),
    );
  }
}