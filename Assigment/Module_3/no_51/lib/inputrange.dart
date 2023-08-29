import 'package:flutter/material.dart';

class NumberRangeScreen extends StatelessWidget {
  final int number1;
  final int number2;

  NumberRangeScreen({required this.number1, required this.number2});

  @override
  Widget build(BuildContext context) {
    List<Widget> numberWidgets = [];

    for (int i = number1; i <= number2; i++) {
      numberWidgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            i.toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numbers between $number1 and $number2:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: numberWidgets,
              ),
            ],
          ),
        ),
      ),
    );
  }
}