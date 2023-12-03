import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlertDialogWithButtonsApp(),
    );
  }
}

class AlertDialogWithButtonsApp extends StatelessWidget {
  const AlertDialogWithButtonsApp({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog with Buttons'),
          content: const Text('Choose an option:'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showToast('Positive Button Pressed');
              },
              child: const Text('Positive'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showToast('Negative Button Pressed');
              },
              child: const Text('Negative'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showToast('Neutral Button Pressed');
              },
              child: const Text('Neutral'),
            ),
          ],
        );
      },
    );
  }

  void _showToast(String message) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
