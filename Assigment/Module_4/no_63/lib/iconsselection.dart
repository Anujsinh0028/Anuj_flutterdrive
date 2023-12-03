import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogWithIconsApp(),
    );
  }
}

class AlertDialogWithIconsApp extends StatefulWidget {
  @override
  _AlertDialogWithIconsAppState createState() => _AlertDialogWithIconsAppState();
}

class _AlertDialogWithIconsAppState extends State<AlertDialogWithIconsApp> {
  IconData _selectedIcon = Icons.info;

  void _showIconSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an Icon'),
          content: Column(
            children: [
              _buildIconSelectionTile(Icons.info),
              _buildIconSelectionTile(Icons.warning),
              _buildIconSelectionTile(Icons.error),
            ],
          ),
        );
      },
    );
  }

  ListTile _buildIconSelectionTile(IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(icon == Icons.info
          ? 'Info Icon'
          : icon == Icons.warning
              ? 'Warning Icon'
              : 'Error Icon'),
      onTap: () {
        Navigator.of(context).pop();
        setState(() {
          _selectedIcon = icon;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog with Icons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _selectedIcon,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showIconSelectionDialog(context);
              },
              child: Text('Select Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
