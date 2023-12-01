import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  String _result = '';
  String _selectedOperation = 'Add';

  void _calculateResult() {
    double number1 = double.tryParse(_number1Controller.text) ?? 0.0;
    double number2 = double.tryParse(_number2Controller.text) ?? 0.0;

    setState(() {
      switch (_selectedOperation) {
        case 'Add':
          _result = (number1 + number2).toString();
          break;
        case 'Subtract':
          _result = (number1 - number2).toString();
          break;
        case 'Multiply':
          _result = (number1 * number2).toString();
          break;
        case 'Divide':
          _result = (number1 / number2).toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('Select Operation:'),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Radio(
                      value: 'Add',
                      groupValue: _selectedOperation,
                      onChanged: (value) {
                        setState(() {
                          _selectedOperation = value.toString();
                        });
                      },
                    ),
                    const Text('Add'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Subtract',
                      groupValue: _selectedOperation,
                      onChanged: (value) {
                        setState(() {
                          _selectedOperation = value.toString();
                        });
                      },
                    ),
                    const Text('Subtract'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Multiply',
                      groupValue: _selectedOperation,
                      onChanged: (value) {
                        setState(() {
                          _selectedOperation = value.toString();
                        });
                      },
                    ),
                    const Text('Multiply'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Divide',
                      groupValue: _selectedOperation,
                      onChanged: (value) {
                        setState(() {
                          _selectedOperation = value.toString();
                        });
                      },
                    ),
                    const Text('Divide'),
                  ],
                ),
              ],
            ),
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter number 1'),
            ),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter number 2'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateResult,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
