import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlertDialogWithCitySelectionApp(),
    );
  }
}

class AlertDialogWithCitySelectionApp extends StatefulWidget {
  const AlertDialogWithCitySelectionApp({super.key});

  @override
  _AlertDialogWithCitySelectionAppState createState() =>
      _AlertDialogWithCitySelectionAppState();
}

class _AlertDialogWithCitySelectionAppState
    extends State<AlertDialogWithCitySelectionApp> {
  String _selectedCity = 'Select a city';

  final List<String> cities = [
    'ahemdabad',
    'gandhinagar',
    'mehsana',
    'himmatnagar',
  ];

  void _showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a City'),
          content: Column(
            children: List.generate(
              cities.length,
              (index) => RadioListTile<String>(
                title: Text(cities[index]),
                value: cities[index],
                groupValue: _selectedCity,
                onChanged: (value) {
                  Navigator.of(context).pop();
                  setState(() {
                    _selectedCity = value!;
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog with City Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected City: $_selectedCity',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showCitySelectionDialog(context);
              },
              child: const Text('Select City'),
            ),
          ],
        ),
      ),
    );
  }
}
