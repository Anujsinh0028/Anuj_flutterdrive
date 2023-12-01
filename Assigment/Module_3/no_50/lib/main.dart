import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ReverseNumberApp(),
    );
  }
}

class ReverseNumberApp extends StatefulWidget {
  @override
  _ReverseNumberAppState createState() => _ReverseNumberAppState();
}

class _ReverseNumberAppState extends State<ReverseNumberApp> {
  TextEditingController _numberController = TextEditingController();
  String _reversedNumber = '';

  void _reverseNumber() {
    setState(() {
      String number = _numberController.text;
      _reversedNumber = String.fromCharCodes(number.runes.toList().reversed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter a number'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse Number'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Reversed Number: $_reversedNumber',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
