import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail Clone'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Inbox'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InboxScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Sent'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SentScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Drafts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DraftsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Email $index'),
            subtitle: const Text('This is a sample email'),
            onTap: () {
              // Add your logic for handling email click
              print('Open email $index');
            },
          );
        },
      ),
    );
  }
}

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sent'),
      ),
      body: const Center(
        child: Text('Sent Emails'),
      ),
    );
  }
}

class DraftsScreen extends StatelessWidget {
  const DraftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drafts'),
      ),
      body: const Center(
        child: Text('Draft Emails'),
      ),
    );
  }
}
