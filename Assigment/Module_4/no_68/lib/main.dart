// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Context Menu Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context Menu Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ContextMenuAction(
            actions: [
              ContextMenuItem(
                onTap: () {
                  // Perform "Edit" operation
                  print('Edit ${items[index]}');
                },
                title: 'Edit',
                icon: Icons.edit,
              ),
              ContextMenuItem(
                onTap: () {
                  // Perform "View" operation
                  print('View ${items[index]}');
                },
                title: 'View',
                icon: Icons.visibility,
              ),
              ContextMenuItem(
                onTap: () {
                  // Perform "Delete" operation
                  setState(() {
                    items.removeAt(index);
                  });
                  print('Delete ${items[index]}');
                },
                title: 'Delete',
                icon: Icons.delete,
                color: Colors.red, // Optional: Set color for "Delete" item
              ),
            ],
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}

class ContextMenuAction extends StatelessWidget {
  final List<ContextMenuItem> actions;
  final Widget child;

  const ContextMenuAction({super.key, required this.actions, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () async {
        await showMenu(
          context: context,
          position: RelativeRect.fromRect(
            Offset.zero & MediaQuery.of(context).size,
            Offset.zero & MediaQuery.of(context).size,
          ),
          items: actions.map((action) {
            return PopupMenuItem(
              child: ListTile(
                leading: Icon(action.icon),
                title: Text(action.title),
                onTap: () {
                  Navigator.pop(context);
                  action.onTap();
                },
              ),
            );
          }).toList(),
        );
      },
      child: child,
    );
  }
}

class ContextMenuItem {
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final Color? color;

  ContextMenuItem({
    required this.onTap,
    required this.title,
    required this.icon,
    this.color,
  });
}
