import 'package:flutter/material.dart';
import 'package:smart_spend/chart.dart';
import 'package:smart_spend/other/hiddenmenudrawer.dart';
import 'package:smart_spend/intro.dart';

void main(){
  runApp(const Spendapp());
}

class Spendapp extends StatefulWidget {
  const Spendapp({super.key});

  @override
  State<Spendapp> createState() => _SpendappState();
}

class _SpendappState extends State<Spendapp> {
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham-font'),
      debugShowCheckedModeBanner: false,
      home: intropage(),
    );
  }
}