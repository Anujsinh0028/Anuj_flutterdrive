import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter first number'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter second number'),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                navigateToResultScreen();
              },
              child: const Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToResultScreen() {
    String firstNumber = firstNumberController.text;
    String secondNumber = secondNumberController.text;

    if (firstNumber.isNotEmpty && secondNumber.isNotEmpty) {
      int sum = int.parse(firstNumber) + int.parse(secondNumber);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(sum: sum),
        ),
      );
    } else {
      showToast('Please enter both numbers.');
    }
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int sum;

  ResultScreen({super.key, required this.sum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Screen'),
      ),
      body: Center(
        child: Text('Sum: $sum'),
      ),
    );
  }
}
