import 'package:flutter/material.dart';
import 'package:no_51/inputrange.dart';

class InputNumbersScreen extends StatefulWidget {
  @override
  _InputNumbersScreenState createState() => _InputNumbersScreenState();
}

class _InputNumbersScreenState extends State<InputNumbersScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _navigateToNumberRangeScreen() {
    if (_controller1.text.isNotEmpty && _controller2.text.isNotEmpty) {
      int number1 = int.parse(_controller1.text);
      int number2 = int.parse(_controller2.text);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumberRangeScreen(
            number1: number1,
            number2: number2,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 1',
              ),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 2',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToNumberRangeScreen,
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}